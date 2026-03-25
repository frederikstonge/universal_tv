import 'package:dart_mappable/dart_mappable.dart';
import 'package:uuid/uuid.dart';

import '../../extensions/m3u_tags.dart';
import '../../extensions/map_extensions.dart';

part 'm3u_entry.mapper.dart';

@MappableClass()
class M3uEntry with M3uEntryMappable {
  final String id;
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

  factory M3uEntry.fromM3uParsed(String name, String url, Map<String, String> attributes, String providerName) {
    return M3uEntry(
      id: Uuid().v4(),
      url: url,
      name: name,
      tvgId: attributes.safeGet(M3uTags.tvgId),
      groupTitle: attributes.safeGet(M3uTags.groupTitle),
      logoUrl: attributes.safeGet(M3uTags.tvgLogo),
      attributes: attributes,
      providerName: providerName,
    );
  }
}
