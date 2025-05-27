import 'package:dart_mappable/dart_mappable.dart';
import 'server_info.dart';
import 'user_info.dart';

part 'general_information.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GeneralInformation with GeneralInformationMappable {
  final UserInfo? userInfo;
  final ServerInfo? serverInfo;

  GeneralInformation({required this.userInfo, required this.serverInfo});
}
