import 'package:blog_app/core/theme/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class Usecase<successType, Params>{
  Future<Either<Failure,successType>> call(Params params);
}