import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/tv_show_details/tv_show_details_cubit.dart';
import 'tv_show_details_page.dart';

class TvShowDetailsShell extends StatelessWidget {
  final String providerName;
  final int tvShowId;

  const TvShowDetailsShell({super.key, required this.providerName, required this.tvShowId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocContext) =>
          TvShowDetailsCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())..load(providerName, tvShowId),
      child: const TvShowDetailsPage(),
    );
  }
}
