import 'package:blog_app/core/theme/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class UserSignUp implements Usecase<String,UserSignUpParams>{
  AuthRepository authRepository;
  UserSignUp({required this.authRepository});
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async{
  return await authRepository.signUpWithEmailPassword(name: params.name, email: params.email, password: params.password);
  }

}

class UserSignUpParams{
  final String name;
  final String password;
  final String email;

  UserSignUpParams({required this.name, required this.email, required this.password});
}