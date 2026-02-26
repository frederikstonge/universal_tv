// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'iptv_type.dart';

class IptvTypeMapper extends EnumMapper<IptvType> {
  IptvTypeMapper._();

  static IptvTypeMapper? _instance;
  static IptvTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IptvTypeMapper._());
    }
    return _instance!;
  }

  static IptvType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  IptvType decode(dynamic value) {
    switch (value) {
      case r'movies':
        return IptvType.movies;
      case r'tvshows':
        return IptvType.tvshows;
      case r'live':
        return IptvType.live;
      case r'unknown':
        return IptvType.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(IptvType self) {
    switch (self) {
      case IptvType.movies:
        return r'movies';
      case IptvType.tvshows:
        return r'tvshows';
      case IptvType.live:
        return r'live';
      case IptvType.unknown:
        return r'unknown';
    }
  }
}

extension IptvTypeMapperExtension on IptvType {
  String toValue() {
    IptvTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<IptvType>(this) as String;
  }
}

