import 'package:dart_mappable/dart_mappable.dart';

part 'iptv_type.mapper.dart';

@MappableEnum()
enum IptvType { movies, tvshows, live, unknown }
