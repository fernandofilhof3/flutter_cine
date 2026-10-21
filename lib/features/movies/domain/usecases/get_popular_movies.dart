import 'package:flutter_cine/core/error/result.dart';
import 'package:flutter_cine/core/usecase/usecase.dart';
import 'package:flutter_cine/features/movies/domain/entities/movie.dart';
import 'package:flutter_cine/features/movies/domain/repositories/movie_repository.dart';

class GetPopularMovies implements UseCase<List<Movie>, int> {
  const new(this._repository);

  final MovieRepository _repository;

  @override
  Future<Result<List<Movie>>> call(int page) {
    return _repository.getPopularMovies(page: page);
  }
}
