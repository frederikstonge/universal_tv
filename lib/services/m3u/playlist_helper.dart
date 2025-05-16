import 'package:collection/collection.dart';

import 'models/generic_entry.dart';

/// Helper functions around categories and extra properties on playlist files.
class PlaylistHelper {
  /// From a list of categories return them organized by a property
  /// [entries] all the entries from the response
  /// [attributes] names of the attribute to merge for
  /// to merge properties.
  static Map<String, List<M3uGenericEntry>> sortedCategories({
    required List<M3uGenericEntry> entries,
    required List<String> attributes,
  }) {
    return entries.fold(<String, List<M3uGenericEntry>>{}, (acc, current) {
      final property =
          current.attributes.entries
              .firstWhereOrNull((k) => attributes.any((a) => a.toUpperCase() == k.key.toUpperCase()))
              ?.value ??
          'Unknown';

      if (!acc.containsKey(property)) {
        acc[property] = [current];
      } else {
        acc[property]!.add(current);
      }
      return acc;
    });
  }
}
