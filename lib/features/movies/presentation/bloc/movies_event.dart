part of 'movies_bloc.dart';

sealed class MoviesEvent extends Equatable {
  const new();

  @override
  List<Object?> get props => [];
}

final class MoviesFetched extends MoviesEvent {
  const new();
}
