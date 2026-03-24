import 'package:dart_mappable/dart_mappable.dart';
import 'package:muxa_xtream/muxa_xtream.dart';

import '../extensions/m3u_entry_extensions.dart';
import 'repositories/m3u_entry.dart';

part 'live_channel.mapper.dart';

@MappableClass()
class LiveChannel with LiveChannelMappable {
  final String streamId;
  final String name;
  final String? logoUrl;
  final String categoryId;
  final String? epgChannelId;
  final String providerName;

  const LiveChannel({
    required this.streamId,
    required this.name,
    required this.categoryId,
    required this.providerName,
    this.logoUrl,
    this.epgChannelId,
  });

  factory LiveChannel.fromXtLiveChannel(XtLiveChannel xtChannel, String providerName) {
    return LiveChannel(
      streamId: xtChannel.streamId.toString(),
      name: xtChannel.name,
      categoryId: xtChannel.categoryId,
      logoUrl: xtChannel.logoUrl,
      epgChannelId: xtChannel.epgChannelId,
      providerName: providerName,
    );
  }

  factory LiveChannel.fromM3uEntry(M3uEntry entry) {
    return LiveChannel(
      streamId: entry.id,
      name: entry.name,
      categoryId: entry.groupTitle ?? '',
      logoUrl: entry.logoUrl,
      epgChannelId: entry.epgChannelId ?? entry.tvgId,
      providerName: entry.providerName,
    );
  }
}
