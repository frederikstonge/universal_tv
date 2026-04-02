import 'package:dart_mappable/dart_mappable.dart';
import 'package:xtream_code_client/xtream_code_client.dart';

import 'xmltv_base.dart';

part 'xmltv_channel.mapper.dart';

@MappableClass(discriminatorValue: 'channel')
class XmltvChannel extends XmltvBase with XmltvChannelMappable {
  final String id;
  final String? displayName;
  final String? iconUrl;

  XmltvChannel({
    required this.id,
    required super.providerName,
    required super.expiration,
    this.displayName,
    this.iconUrl,
  });

  factory XmltvChannel.fromXtXmltvChannel(Channel channel, String providerName, DateTime expiration) {
    return XmltvChannel(
      id: channel.id,
      displayName: channel.displayNames.firstOrNull?.value,
      iconUrl: channel.icons.firstOrNull?.src,
      providerName: providerName,
      expiration: expiration,
    );
  }

  factory XmltvChannel.fromXtEpgChannel(EpgLiteChannel channel, String providerName, DateTime expiration) {
    return XmltvChannel(
      id: channel.id,
      displayName: channel.displayNames.firstOrNull,
      providerName: providerName,
      expiration: expiration,
    );
  }
}
