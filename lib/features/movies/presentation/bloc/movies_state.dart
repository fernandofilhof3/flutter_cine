part of 'movies_bloc.dart';

enum MoviesStatus { initial, loading, success, failure }

final class MoviesState extends Equatable {
  const new({
    this.status = MoviesStatus.initial,
    this.movies = const [],
    this.page = 0,
    this.hasReachedMax = false,
    this.failure,
  });

  final MoviesStatus status;
  final List<Movie> movies;
  final int page;
  final bool hasReachedMax;
  final Failure? failure;

  MoviesState copyWith({
    MoviesStatus? status,
    List<Movie>? movies,
    int? page,
    bool? hasReachedMax,
    Failure? failure,
  }) {
    return MoviesState(
      status: status ?? this.status,
      movies: movies ?? this.movies,
      page: page ?? this.page,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      failure: failure,
    );
  }

  @override
  List<Object?> get props => [status, movies, page, hasReachedMax, failure];
}
