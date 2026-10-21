import 'package:flutter_cine/core/error/result.dart';

abstract interface class UseCase<T, P> {
  Future<Result<T>> call(P params);
}
