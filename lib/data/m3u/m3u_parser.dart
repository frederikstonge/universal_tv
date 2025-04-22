import 'dart:convert';

import 'file_type_header.dart';
import 'models/entry_information.dart';
import 'models/generic_entry.dart';
import 'models/m3u_data.dart';

class M3uParser {
  FileTypeHeader? _fileType;
  EntryInformation? _currentInfoEntry;

  final Map<String, String> _metadata = {};
  final List<M3uGenericEntry> _playlist = [];

  static M3uData parse(String source) {
    return M3uParser()._parse(source);
  }

  M3uData _parse(String source) {
    LineSplitter.split(source).forEach(_parseLine);
    return M3uData(metadata: _metadata, playlist: _playlist);
  }

  void _parseLine(String line) {
    if (line.isEmpty) {
      return;
    }

    if (_currentInfoEntry != null) {
      _playlist.add(M3uGenericEntry.fromEntryInformation(information: _currentInfoEntry!, link: line));
      _currentInfoEntry = null;
      return;
    }

    if (_fileType == null && line == '#M3U') {
      _fileType = FileTypeHeader.m3u;
      return;
    }

    if (_fileType == null && line == '#EXTM3U') {
      _fileType = FileTypeHeader.m3uPlus;
      return;
    }

    if (line.startsWith('#EXT-X-')) {
      final split = line.split(':');
      _metadata[split[0].substring(7)] = split[1];
      return;
    }

    if (line.startsWith('#EXTINF:')) {
      final parsedEntry = _parseInfoRow(line, _fileType);
      if (parsedEntry == null) {
        return;
      }
      _currentInfoEntry = parsedEntry;
    }
  }

  EntryInformation? _parseInfoRow(String line, FileTypeHeader? fileType) {
    switch (fileType) {
      case FileTypeHeader.m3u:
        return _regexParse(line);
      case FileTypeHeader.m3uPlus:
        return _regexParse(line);
      default:
        return null;
    }
  }

  /// This parses the metadata information of a line.
  /// This is a Regex parser caution is advised.
  EntryInformation _regexParse(String line) {
    final regexExpression = RegExp(r' (.*?)=\"(.*?)"|,(.*)');
    final matches = regexExpression.allMatches(line);
    final attributes = <String, String?>{};
    String? title = '';

    for (var match in matches) {
      if (match[1] != null && match[2] != null) {
        attributes[match[1]!] = match[2];
      } else if (match[3] != null) {
        title = match[3];
      }
    }
    return EntryInformation(title: title!, attributes: attributes);
  }
}
