import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cine/core/error/failures.dart';
import 'package:flutter_cine/core/error/result.dart';
import 'package:flutter_cine/features/movies/domain/entities/movie.dart';
import 'package:flutter_cine/features/movies/domain/usecases/get_popular_movies.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  new({required this._getPopularMovies}) : super(const MoviesState()) {
    on<MoviesFetched>(_onFetched);
  }

  final GetPopularMovies _getPopularMovies;
  Future<void> _onFetched(
    MoviesFetched event,
    Emitter<MoviesState> emit,
  ) async {
    if (state.hasReachedMax || state.status == MoviesStatus.loading) return;

    emit(state.copyWith(status: MoviesStatus.loading));

    final nextPage = state.page + 1;
    final result = await _getPopularMovies(nextPage);

    switch (result) {
      case Ok(:final value):
        emit(
          state.copyWith(
            status: MoviesStatus.success,
            movies: [...state.movies, ...value],
            page: nextPage,
            hasReachedMax: value.isEmpty,
          ),
        );
      case Err(:final failure):
        emit(state.copyWith(status: MoviesStatus.failure, failure: failure));
    }
  }
}
