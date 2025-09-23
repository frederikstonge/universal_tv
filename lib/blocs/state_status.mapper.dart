// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'state_status.dart';

class StateStatusMapper extends EnumMapper<StateStatus> {
  StateStatusMapper._();

  static StateStatusMapper? _instance;
  static StateStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StateStatusMapper._());
    }
    return _instance!;
  }

  static StateStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  StateStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return StateStatus.initial;
      case r'loading':
        return StateStatus.loading;
      case r'success':
        return StateStatus.success;
      case r'failure':
        return StateStatus.failure;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(StateStatus self) {
    switch (self) {
      case StateStatus.initial:
        return r'initial';
      case StateStatus.loading:
        return r'loading';
      case StateStatus.success:
        return r'success';
      case StateStatus.failure:
        return r'failure';
    }
  }
}

extension StateStatusMapperExtension on StateStatus {
  String toValue() {
    StateStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<StateStatus>(this) as String;
  }
}

