import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';

import '../../../blocs/iptv_service/iptv_service_cubit.dart';
import '../../../models/episode_details.dart';
import '../../../models/tv_show_details.dart';

class TvShowDetailsPage extends StatefulWidget {
  final String providerName;
  final int tvShowId;

  const TvShowDetailsPage({super.key, required this.providerName, required this.tvShowId});

  @override
  State<TvShowDetailsPage> createState() => _TvShowDetailsPageState();
}

class _TvShowDetailsPageState extends State<TvShowDetailsPage> {
  TvShowDetails? tvShow;
  int? selectedSeason;
  EpisodeDetails? selectedEpisode;

  @override
  void initState() {
    context.read<IptvServiceCubit>().getTvShowDetails(widget.providerName, widget.tvShowId).then((tvShow) {
      if (!mounted) {
        return;
      }

      setState(() {
        this.tvShow = tvShow;
        selectedSeason = tvShow?.seasons.keys.firstOrNull;
        selectedEpisode = selectedSeason != null ? tvShow?.seasons[selectedSeason!]!.firstOrNull : null;
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
        title: Text(tvShow?.name ?? 'Loading...'),
      ),
      child: tvShow != null
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: tvShow!.posterUrl != null
                          ? DecorationImage(image: NetworkImage(tvShow!.posterUrl!), fit: BoxFit.cover)
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
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: FSelect<int>(
                                      items: tvShow!.seasons.map((i, e) => MapEntry('Season $i', i)),
                                      initialValue: selectedSeason,
                                      onChange: (value) {
                                        setState(() {
                                          if (value == null) {
                                            return;
                                          }

                                          selectedSeason = value;
                                          selectedEpisode = null;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: FSelect<EpisodeDetails>(
                                      items: tvShow!.seasons[selectedSeason]!.asMap().map(
                                        (i, e) => MapEntry('Episode ${e.episode}', e),
                                      ),
                                      initialValue: selectedEpisode ?? tvShow!.seasons[selectedSeason]!.first,
                                      onChange: (value) {
                                        setState(() {
                                          if (value == null) {
                                            return;
                                          }

                                          selectedEpisode = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
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
                  if (tvShow!.plot != null) ...[
                    Padding(padding: const EdgeInsets.all(8.0), child: Text(tvShow!.plot!)),
                  ],
                ],
              ),
            )
          : Center(child: FCircularProgress()),
    );
  }
}
