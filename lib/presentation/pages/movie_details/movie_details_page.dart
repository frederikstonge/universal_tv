import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../models/movie_details.dart';

class MovieDetailsPage extends StatefulWidget {
  final String providerName;
  final int movieId;

  const MovieDetailsPage({super.key, required this.providerName, required this.movieId});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  MovieDetails? movie;

  @override
  void initState() {
    context.read<IptvServiceCubit>().getMovieDetails(widget.providerName, widget.movieId).then((movie) {
      if (!mounted) {
        return;
      }

      setState(() {
        this.movie = movie;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      header: FHeader.nested(
        prefixes: [FButton.icon(child: Icon(FIcons.arrowLeft), onPress: () => Navigator.of(context).pop())],
        title: Text(movie?.name ?? 'Loading...'),
      ),
      child: movie != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: movie!.posterUrl != null
                        ? DecorationImage(image: NetworkImage(movie!.posterUrl!), fit: BoxFit.cover)
                        : null,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              context.theme.colors.background.withAlpha(0),
                              context.theme.colors.background.withAlpha(200),
                              context.theme.colors.background.withAlpha(255),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: FButton(
                                    mainAxisSize: MainAxisSize.min,
                                    prefix: Icon(FIcons.play),
                                    onPress: () {},
                                    child: Text('Play'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (movie!.plot != null) ...[Padding(padding: const EdgeInsets.all(8.0), child: Text(movie!.plot!))],
              ],
            )
          : Center(child: FCircularProgress()),
    );
  }
}
