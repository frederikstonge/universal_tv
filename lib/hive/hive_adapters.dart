import 'package:hive_ce/hive.dart';

import '../models/repositories/imdb_entry.dart';

@GenerateAdapters([AdapterSpec<ImdbEntry>(), AdapterSpec<ImdbImage>(), AdapterSpec<ImdbRating>()])
part 'hive_adapters.g.dart';
