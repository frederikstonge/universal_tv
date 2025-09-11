import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import 'xmltv_base.dart';

part 'xmltv_programme.mapper.dart';

@MappableClass(discriminatorValue: 'programme')
class XmltvProgramme with XmltvProgrammeMappable implements XmltvBase {
  final String channelId;
  final DateTime start;
  final DateTime? stop;
  final String? title;
  final String? description;
  final List<String> categories;
  final String providerName;

  const XmltvProgramme({
    required this.channelId,
    required this.start,
    this.stop,
    this.title,
    this.description,
    this.categories = const [],
    required this.providerName,
  });

  factory XmltvProgramme.fromXtXmltvProgramme(XtXmltvProgramme programme, String providerName) {
    return XmltvProgramme(
      channelId: programme.channelId,
      start: programme.start,
      stop: programme.stop,
      title: programme.title,
      description: programme.description,
      categories: programme.categories,
      providerName: providerName,
    );
  }

  factory XmltvProgramme.fromXtEpg(XtEpgEntry entry, String providerName) {
    return XmltvProgramme(
      channelId: entry.channelId,
      start: entry.startUtc,
      stop: entry.endUtc,
      title: entry.title,
      description: entry.description,
      categories: [],
      providerName: providerName,
    );
  }
}
