import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import 'xmltv_base.dart';

part 'xmltv_channel.mapper.dart';

@MappableClass(discriminatorValue: 'channel')
class XmltvChannel extends XmltvBase with XmltvChannelMappable {
  final String id;
  final String? displayName;
  final String? iconUrl;

  XmltvChannel({
    required this.id,
    this.displayName,
    this.iconUrl,
    required super.providerName,
    required super.expiration,
  });

  factory XmltvChannel.fromXtXmltvChannel(XtXmltvChannel channel, String providerName, DateTime expiration) {
    return XmltvChannel(
      id: channel.id,
      displayName: channel.displayName,
      iconUrl: channel.iconUrl,
      providerName: providerName,
      expiration: expiration,
    );
  }
}
