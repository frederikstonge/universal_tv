import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import 'xmltv_base.dart';

part 'xmltv_programme.mapper.dart';

@MappableClass(discriminatorValue: 'programme')
class XmltvProgramme extends XmltvBase with XmltvProgrammeMappable {
  final String channelId;
  final DateTime start;
  final DateTime? stop;
  final String? title;
  final String? description;
  final List<String> categories;

  XmltvProgramme({
    required this.channelId,
    required this.start,
    this.stop,
    this.title,
    this.description,
    this.categories = const [],
    required super.providerName,
    required super.expiration,
  });

  factory XmltvProgramme.fromXtXmltvProgramme(XtXmltvProgramme programme, String providerName, DateTime expiration) {
    return XmltvProgramme(
      channelId: programme.channelId,
      start: programme.start,
      stop: programme.stop,
      title: programme.title,
      description: programme.description,
      categories: programme.categories,
      providerName: providerName,
      expiration: expiration,
    );
  }

  factory XmltvProgramme.fromXtEpg(XtEpgEntry entry, String providerName, DateTime expiration) {
    return XmltvProgramme(
      channelId: entry.channelId,
      start: entry.startUtc,
      stop: entry.endUtc,
      title: entry.title,
      description: entry.description,
      categories: [],
      providerName: providerName,
      expiration: expiration,
    );
  }
}
