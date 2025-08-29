import 'package:collection/collection.dart';

extension MapExtensions on Map<String, String?> {
  String? safeGet(String key) {
    final safeItem = entries.firstWhereOrNull((i) => i.key.toLowerCase() == key.toLowerCase());
    return safeItem?.value;
  }

  List<String>? safeGetList(List<String> keys) {
    return entries
        .where(
          (attribute) =>
              keys.any((a) => a.toLowerCase() == attribute.key.toLowerCase()) && attribute.value?.isNotEmpty == true,
        )
        .map((e) => e.value!)
        .toList();
  }
}
