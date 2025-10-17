import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../blocs/movie_details/movie_details_cubit.dart';
import 'movie_details_page.dart';

class MovieDetailsShell extends StatelessWidget {
  final String providerName;
  final int movieId;

  const MovieDetailsShell({super.key, required this.providerName, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocContext) =>
          MovieDetailsCubit(iptvServiceCubit: blocContext.read<IptvServiceCubit>())..load(providerName, movieId),
      child: const MovieDetailsPage(),
    );
  }
}
