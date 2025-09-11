import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import 'xmltv_base.dart';

part 'xmltv_channel.mapper.dart';

@MappableClass(discriminatorValue: 'channel')
class XmltvChannel with XmltvChannelMappable implements XmltvBase {
  final String id;
  final String? displayName;
  final String? iconUrl;
  final String providerName;

  const XmltvChannel({required this.id, this.displayName, this.iconUrl, required this.providerName});

  factory XmltvChannel.fromXtXmltvChannel(XtXmltvChannel channel, String providerName) {
    return XmltvChannel(
      id: channel.id,
      displayName: channel.displayName,
      iconUrl: channel.iconUrl,
      providerName: providerName,
    );
  }
}
