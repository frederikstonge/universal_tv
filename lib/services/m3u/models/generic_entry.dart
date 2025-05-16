import 'entry_information.dart';

class M3uGenericEntry {
  final String title;
  final Map<String, String?> attributes;
  final String link;

  M3uGenericEntry({required this.title, required this.attributes, required this.link});

  factory M3uGenericEntry.fromEntryInformation({required EntryInformation information, required String link}) =>
      M3uGenericEntry(title: information.title, attributes: information.attributes, link: link);
}
