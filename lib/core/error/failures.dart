import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  const new(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

final class ServerFailure extends Failure {
  const new([super.message = 'Server Error']);
}

final class NetworkFailure extends Failure {
  const new([super.message = 'No internet connection']);
}

final class CacheFailure extends Failure {
  const new([super.message = 'Local storage Error']);
}
