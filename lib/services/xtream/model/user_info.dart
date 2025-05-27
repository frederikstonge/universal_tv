import 'package:dart_mappable/dart_mappable.dart';

part 'user_info.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserInfo with UserInfoMappable {
  final String? username;
  final String? password;
  final String? message;
  final bool? auth;
  final String? status;
  final DateTime? expDate;
  final bool? isTrial;
  final int? activeCons;
  final DateTime? createdAt;
  final int? maxConnections;
  final List<String>? allowedOutputFormats;

  UserInfo({
    required this.username,
    required this.password,
    required this.message,
    required this.auth,
    required this.status,
    required this.expDate,
    required this.isTrial,
    required this.activeCons,
    required this.createdAt,
    required this.maxConnections,
    required this.allowedOutputFormats,
  });
}
