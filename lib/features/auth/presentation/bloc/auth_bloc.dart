 
import 'package:blog_app/features/auth/domain/usercases/user_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;
 
  AuthBloc({required UserSignUp userSignUp}) :  _userSignUp= userSignUp, super(AuthInitial()) {
      print('--------------------------------');
    on<AuthSignUp>((event,emit)async{
final res = await _userSignUp.call(UserSignUpParams(name: event.name, email: event.email, password: event.password));
  
    res.fold((l)=>emit(AuthFailure(message: l.message)), (r)=>emit(AuthSuccess(uid: r)));
    });
  }
}
