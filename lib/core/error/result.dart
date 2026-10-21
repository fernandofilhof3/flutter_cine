import 'package:flutter_cine/core/error/failures.dart';

sealed class Result<T> {
  const new();
}

final class Ok<T> extends Result<T> {
  const new(this.value);
  final T value;
}

final class Err<T> extends Result<T> {
  const new(this.failure);
  final Failure failure;
}
