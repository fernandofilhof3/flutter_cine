import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cine/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:flutter_cine/injection.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureDependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cine',
      home: BlocProvider(
        create: (_) => getIt<MoviesBloc>()..add(const MoviesFetched()),
        child: const Scaffold(body: Center(child: Text('Flutter Cine'))),
      ),
    );
  }
}
