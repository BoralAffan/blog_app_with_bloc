import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:blog_app/features/auth/domain/usercases/user_sign_up.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


final serviceLocator = GetIt.instance;
Future<void> initDependencies()async{


   final supabase= await Supabase.initialize(url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
   serviceLocator.registerLazySingleton(()=>supabase.client);
  _initAuth();
//create a new instance whenever called
  //  serviceLocator.registerFactory(factoryFunc);

//uses the same instance for the enitre life cycle

}

void _initAuth(){
 
serviceLocator.registerFactory<AuthRemoteDataSource>(()=> AuthRemoteDataSourceImpm(supabaseClient: serviceLocator()));
serviceLocator.registerFactory<AuthRepository>(()=> AuthRepositoryImpl(authRemoteDataSource: serviceLocator()));
serviceLocator.registerFactory(()=> UserSignUp(authRepository: serviceLocator()));
 
   serviceLocator.registerLazySingleton<AuthBloc>(() => AuthBloc(userSignUp: serviceLocator()));

 
}