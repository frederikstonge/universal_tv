import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/tv_show_details/tv_show_details_cubit.dart';
import 'tv_show_player_page.dart';

class TvShowPlayerShell extends StatelessWidget {
  final String providerName;
  final int tvShowId;
  final int selectedSeason;
  final int selectedEpisode;

  const TvShowPlayerShell({
    super.key,
    required this.providerName,
    required this.tvShowId,
    required this.selectedSeason,
    required this.selectedEpisode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocContext) =>
          TvShowDetailsCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())
            ..load(providerName, tvShowId, initialSeason: selectedSeason, initialEpisode: selectedEpisode),
      child: const TvShowPlayerPage(),
    );
  }
}
