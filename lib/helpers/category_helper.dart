import '../models/iptv_entry.dart';

class CategoryHelper {
  static Map<String, List<IptvEntry>> sortedCategories({required List<IptvEntry> entries}) {
    return entries.fold(<String, List<IptvEntry>>{}, (acc, current) {
      if (current.categories != null) {
        for (var category in current.categories!) {
          if (acc.containsKey(category)) {
            acc[category]!.add(current);
          } else {
            acc[category] = [current];
          }
        }
      }

      return acc;
    });
  }
}
