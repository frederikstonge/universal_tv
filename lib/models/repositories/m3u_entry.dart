import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'm3u_entry.mapper.dart';

@MappableClass()
class M3uEntry with M3uEntryMappable {
  final int id;
  final String url;
  final String name;
  final String? tvgId;
  final String? groupTitle;
  final String? logoUrl;
  final Map<String, String> attributes;
  final String providerName;

  const M3uEntry({
    required this.id,
    required this.url,
    required this.name,
    this.tvgId,
    this.groupTitle,
    this.logoUrl,
    this.attributes = const {},
    required this.providerName,
  });

  factory M3uEntry.fromXtM3uEntry(int id, XtM3uEntry entry, String providerName) {
    return M3uEntry(
      id: id,
      url: entry.url,
      name: entry.name,
      tvgId: entry.tvgId,
      groupTitle: entry.groupTitle,
      logoUrl: entry.logoUrl,
      attributes: entry.attrs,
      providerName: providerName,
    );
  }
}
