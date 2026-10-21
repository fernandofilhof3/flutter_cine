import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  const new({
    required this.id,
    required this.title,
    required this.overview,
    required this.voteAvarage,
    required this.posterPath,
    required this.releaseDate,
  });

  final int id;
  final String title;
  final String overview;
  final double voteAvarage;
  final String? posterPath;
  final DateTime? releaseDate;

  @override
  List<Object?> get props => [
    id,
    title,
    overview,
    voteAvarage,
    posterPath,
    releaseDate,
  ];
}
