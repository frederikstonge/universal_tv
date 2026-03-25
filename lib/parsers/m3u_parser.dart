import 'dart:convert';

import '../models/repositories/m3u_entry.dart';

class M3uParser {
  static final _attrPattern = RegExp(r'''([\w-]+)\s*=\s*(?:"([^"]*)"|'([^']*)'|([\w-]+))''');
  static final _extinfPattern = RegExp(r'^#EXTINF:[^ ]*');

  /// Parses M3U/M3U8 playlists from a byte stream into [XtM3uEntry] items.
  /// Tolerant to spacing and minor format variants; ignores comments/blank lines.
  static Stream<M3uEntry> parseM3u(Stream<List<int>> bytes, String providerName) async* {
    Map<String, String> pendingAttributes = {};
    String? pendingName;
    await for (final line in bytes.transform(utf8.decoder).transform(const LineSplitter())) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) {
        continue;
      }

      if (trimmed.startsWith('#EXTM3U')) {
        // header; ignore
        continue;
      }

      if (trimmed.startsWith('#EXTINF')) {
        // Example: #EXTINF:-1 tvg-id="ch.id" tvg-name="Channel" tvg-logo="http://logo" group-title="News", Channel Name
        final comma = trimmed.indexOf(',');
        final info = comma >= 0 ? trimmed.substring(0, comma) : trimmed;
        final title = comma >= 0 ? trimmed.substring(comma + 1).trim() : null;
        pendingName = title;
        pendingAttributes.addAll(_parseExtinfAttributes(info));
        continue;
      }

      if (trimmed.startsWith('#')) {
        final splitted = trimmed.split(':');
        if (splitted.length < 2) {
          continue;
        }

        final key = splitted.first;
        final value = trimmed.substring(key.length + 1).trim();
        pendingAttributes.putIfAbsent(key, () => value);
        continue;
      }

      // URL line; pair with last EXTINF title/attrs when present
      final url = trimmed;
      final name = pendingName ?? url;
      final attributes = pendingAttributes;
      final entry = M3uEntry.fromM3uParsed(name, url, attributes, providerName);

      // Reset state for next entry
      pendingAttributes = {};
      pendingName = null;

      yield entry;
    }
  }

  static Map<String, String> _parseExtinfAttributes(String info) {
    // strip leading '#EXTINF:...'
    final attributePart = info.replaceFirst(_extinfPattern, '').trim();
    final attributes = <String, String>{};
    for (final match in _attrPattern.allMatches(attributePart)) {
      final key = match.group(1)!;
      final value = match.group(2) ?? match.group(3) ?? match.group(4) ?? '';
      attributes[key] = value;
    }
    return attributes;
  }
}
