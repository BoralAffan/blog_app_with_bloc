import 'package:blog_app/core/theme/error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource{
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

    Future<String> loginpWithEmailPassword({
     required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpm implements AuthRemoteDataSource{
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpm({required this.supabaseClient});
  @override
  Future<String> loginpWithEmailPassword({required String email, required String password})async {
 
try{
final response = await supabaseClient.auth.signInWithPassword(password: password,email: email);
if(response.user==null){
  throw ServerExceptions('User not exist!!');
}

return response.user!.id;
 }catch(e){
  throw ServerExceptions(e.toString());
 }
  }
  

  @override
  Future<String> signUpWithEmailPassword({required String name, required String email, required String password}) async{
 try{
final response = await supabaseClient.auth.signUp(password: password,email: email,data: {'name':name});
if(response.user==null){
  throw ServerExceptions('User is null!!');
}

return response.user!.id;
 }catch(e){
  throw ServerExceptions(e.toString());
 }
  }
  
}