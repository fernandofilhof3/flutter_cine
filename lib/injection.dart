import 'package:flutter_cine/features/movies/domain/usecases/get_popular_movies.dart';
import 'package:flutter_cine/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void configureDependencies() {
  //presentation
  getIt.registerFactory(() => MoviesBloc(getPopularMovies: getIt()));

  // Domain
  getIt.registerLazySingleton(() => GetPopularMovies(getIt()));
}
