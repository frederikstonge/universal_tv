import 'package:dart_mappable/dart_mappable.dart';

part 'state_status.mapper.dart';

@MappableEnum()
enum StateStatus { initial, loading, success, failure }
