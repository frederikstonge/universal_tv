import 'package:dart_mappable/dart_mappable.dart';
import '../model/server_info.dart';
import '../model/user_info.dart';

part 'general_information.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class XTremeCodeGeneralInformation with XTremeCodeGeneralInformationMappable {
  final XTremeCodeUserInfo? userInfo;
  final XTremeCodeServerInfo? serverInfo;

  XTremeCodeGeneralInformation({required this.userInfo, required this.serverInfo});
}
