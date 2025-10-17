import 'package:dart_mappable/dart_mappable.dart';
import '../../models/movie_details.dart';
import '../state_status.dart';

part 'movie_details_state.mapper.dart';

@MappableClass()
class MovieDetailsState with MovieDetailsStateMappable {
  final StateStatus status;
  final MovieDetails? movie;

  MovieDetailsState({required this.status, this.movie});
}
