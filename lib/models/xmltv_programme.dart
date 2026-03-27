import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'm3u/m3u_entry.dart';
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
    required super.providerName,
    required super.expiration,
    this.stop,
    this.title,
    this.description,
    this.categories = const [],
  });

  factory XmltvProgramme.fromXtXmltvProgramme(Programme programme, String providerName, DateTime expiration) {
    return XmltvProgramme(
      channelId: programme.channel,
      start: programme.start,
      stop: programme.stop,
      title: programme.titles.firstOrNull?.value,
      description: programme.descs.firstOrNull?.value,
      categories: programme.categories.map((e) => e.value).toList(),
      providerName: providerName,
      expiration: expiration,
    );
  }

  factory XmltvProgramme.fromXtEpg(EpgLiteProgramme entry, String providerName, DateTime expiration) {
    return XmltvProgramme(
      channelId: entry.channelId,
      start: entry.start ?? DateTime.now(),
      stop: entry.stop ?? DateTime.now().add(Duration(hours: 1)),
      title: entry.title,
      description: entry.description,
      categories: [],
      providerName: providerName,
      expiration: expiration,
    );
  }

  factory XmltvProgramme.fromM3uEntry(M3uEntry entry, DateTime expiration) {
    return XmltvProgramme(
      channelId: entry.epgChannelId ?? entry.tvgId ?? entry.id,
      start: entry.startTime!,
      stop: entry.endTime!,
      title: entry.name,
      description: entry.plot,
      categories: [if (entry.groupTitle != null) entry.groupTitle!],
      providerName: entry.providerName,
      expiration: expiration,
    );
  }
}
