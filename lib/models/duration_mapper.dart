import 'package:dart_mappable/dart_mappable.dart';

class DurationMapper extends SimpleMapper<Duration> {
  const DurationMapper();

  @override
  Duration decode(dynamic value) {
    if (value is int) {
      return Duration(microseconds: value);
    }
    if (value is String) {
      return Duration(microseconds: int.parse(value));
    }
    throw MapperException.unexpectedType(value.runtimeType, 'int or String');
  }

  @override
  dynamic encode(Duration self) {
    return self.inMicroseconds;
  }
}
