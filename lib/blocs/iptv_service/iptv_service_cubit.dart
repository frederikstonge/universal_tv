import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../blocs/settings/iptv_provider.dart';
import '../../blocs/settings/settings_cubit.dart';
import '../../generated/imdb_api/imdb_api.swagger.dart';
import '../../models/category.dart';
import '../../models/live_channel.dart';
import '../../models/movie_details.dart';
import '../../models/movie_item.dart';
import '../../models/tv_show_details.dart';
import '../../models/tv_show_item.dart';
import '../../repositories/base_repository.dart';
import '../../repositories/m3u_repository.dart';
import '../../repositories/stream_base_repository.dart';
import '../../repositories/xmltv_repository.dart';
import '../../repositories/xtream_repository.dart';
import '../state_status.dart';
import 'iptv_service_state.dart';

class IptvServiceCubit extends Cubit<IptvServiceState> {
  final Dio dio;
  final ImdbApi imdbApi;
  final SettingsCubit settingsCubit;
  StreamSubscription? _settingsSubscription;

  IptvServiceCubit({required this.dio, required this.imdbApi, required this.settingsCubit})
    : super(IptvServiceState(status: StateStatus.initial)) {
    _settingsSubscription = settingsCubit.stream.listen((data) async {
      await _load(data.providers);
    });
  }

  Future<void> initialize(List<IptvProvider> providers) async {
    await _load(providers);
  }

  Future<void> _load(List<IptvProvider> providers) async {
    if (state.status == StateStatus.loading) {
      return;
    }

    emit(state.copyWith(status: StateStatus.loading));

    try {
      final currentRepositories = List<BaseRepository>.from(state.repositories);
      final removedRepositories = currentRepositories.where((r) => !providers.any((p) => p.name == r.name)).toList();
      await Future.wait(removedRepositories.map((r) => r.dispose()).toList());
      currentRepositories.removeWhere((r) => removedRepositories.contains(r));

      final newProviders = providers.where((p) => !currentRepositories.any((r) => r.name == p.name)).toList();
      if (newProviders.isEmpty) {
        return;
      }

      final List<BaseRepository> newRepositories = newProviders.map((p) {
        switch (p.type) {
          case IptvProviderType.xtream:
            return XtreamRepository(provider: p as XtreamIptvProvider);
          case IptvProviderType.xmltv:
            return XmltvRepository(provider: p as XmltvIptvProvider, dio: dio);
          case IptvProviderType.m3u:
            return M3uRepository(provider: p as M3uIptvProvider, dio: dio, imdbApi: imdbApi);
        }
      }).toList();

      if (newRepositories.isNotEmpty) {
        await Future.wait(newRepositories.map((r) => r.load()).toList());
        currentRepositories.addAll(newRepositories);
      }

      emit(state.copyWith(status: StateStatus.success, repositories: currentRepositories));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure));
      return;
    }
  }

  @override
  Future<void> close() async {
    await _settingsSubscription?.cancel();
    _settingsSubscription = null;
    await Future.wait(state.repositories.map((r) => r.dispose()).toList());
    return super.close();
  }

  Future<List<Category>> getLiveCategories() async {
    final categories = await Future.wait(
      state.repositories.whereType<StreamBaseRepository>().map((r) => r.getLiveCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<Category>> getMovieCategories() async {
    final categories = await Future.wait(
      state.repositories.whereType<StreamBaseRepository>().map((r) => r.getMovieCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<Category>> getTvShowCategories() async {
    final categories = await Future.wait(
      state.repositories.whereType<StreamBaseRepository>().map((r) => r.getTvShowCategories()),
    );
    return categories.expand((c) => c).toList();
  }

  Future<List<LiveChannel>> getLiveStreams() async {
    final channels = await Future.wait(
      state.repositories.whereType<StreamBaseRepository>().map((r) => r.getLiveStreams()),
    );
    return channels.expand((c) => c).toList();
  }

  Future<List<MovieItem>> getMovies() async {
    final movies = await Future.wait(state.repositories.whereType<StreamBaseRepository>().map((r) => r.getMovies()));
    return movies.expand((c) => c).toList();
  }

  Future<List<TvShowItem>> getTvShows() async {
    final series = await Future.wait(state.repositories.whereType<StreamBaseRepository>().map((r) => r.getTvShows()));
    return series.expand((c) => c).toList();
  }

  Future<MovieDetails?> getMovieDetails(String providerName, int vodId) async {
    final repository = state.repositories.whereType<StreamBaseRepository>().firstWhereOrNull(
      (r) => r.name == providerName,
    );
    return await repository?.getMovieDetails(vodId);
  }

  Future<TvShowDetails?> getTvShowDetails(String providerName, int seriesId) async {
    final repository = state.repositories.whereType<StreamBaseRepository>().firstWhereOrNull(
      (r) => r.name == providerName,
    );
    return await repository?.getTvShowDetails(seriesId);
  }

  Future<String?> getLiveUrl(String providerName, int streamId) async {
    final repository = state.repositories.whereType<StreamBaseRepository>().firstWhereOrNull(
      (r) => r.name == providerName,
    );

    return await repository?.getLiveUrl(streamId);
  }

  Future<String?> getMovieUrl(String providerName, int streamId) async {
    final repository = state.repositories.whereType<StreamBaseRepository>().firstWhereOrNull(
      (r) => r.name == providerName,
    );

    return await repository?.getMovieUrl(streamId);
  }

  Future<String?> getTvShowUrl(String providerName, int episodeId) async {
    final repository = state.repositories.whereType<StreamBaseRepository>().firstWhereOrNull(
      (r) => r.name == providerName,
    );

    return await repository?.getTvShowUrl(episodeId);
  }
}
