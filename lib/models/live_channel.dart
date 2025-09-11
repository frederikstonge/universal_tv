import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

part 'live_channel.mapper.dart';

@MappableClass()
class LiveChannel with LiveChannelMappable {
  final int streamId;
  final String name;
  final String? logoUrl;
  final String categoryId;
  final String? epgChannelId;
  final String providerName;

  const LiveChannel({
    required this.streamId,
    required this.name,
    required this.categoryId,
    this.logoUrl,
    this.epgChannelId,
    required this.providerName,
  });

  factory LiveChannel.fromXtLiveChannel(XtLiveChannel xtChannel, String providerName) {
    return LiveChannel(
      streamId: xtChannel.streamId,
      name: xtChannel.name,
      categoryId: xtChannel.categoryId,
      logoUrl: xtChannel.logoUrl,
      epgChannelId: xtChannel.epgChannelId,
      providerName: providerName,
    );
  }
}
