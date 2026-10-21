import 'package:flutter_cine/core/error/result.dart';
import 'package:flutter_cine/features/movies/domain/entities/movie.dart';

abstract interface class MovieRepository {
  Future<Result<List<Movie>>> getPopularMovies({required int page});
}
