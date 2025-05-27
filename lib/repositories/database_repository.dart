import 'package:flutter_mimir/flutter_mimir.dart';

import '../models/iptv_entry.dart';

class DatabaseRepository {
  MimirIndex? _index;
  DatabaseRepository();

  Future<void> setDocuments(List<IptvEntry> entries) async {
    final index = await _getDatabaseIndex();
    await index.setDocuments(entries.map((entry) => entry.toMap()).toList());
  }

  Future<List<IptvEntry>> search({
    String? query,
    Filter? filter,
    List<SortBy>? sortBy,
    int? resultLimit,
    int? offset,
  }) async {
    final index = await _getDatabaseIndex();
    final results = await index.search(
      query: query,
      filter: filter,
      sortBy: sortBy,
      resultsLimit: resultLimit,
      offset: offset,
    );
    return results.map((result) => IptvEntryMapper.fromMap(result)).toList();
  }

  Future<MimirIndex> _getDatabaseIndex() async {
    if (_index != null) {
      return _index!;
    }

    final database = await Mimir.defaultInstance;
    _index = await database.openIndex('iptv_entries');

    return _index!;
  }
}
