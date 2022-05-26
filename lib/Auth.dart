import 'package:firebase_auth/firebase_auth.dart';
class AuthServices  {
  final FirebaseAuth _auth=FirebaseAuth.instance;

  Future<User?>singIn(String email,String password)async{

    var user =await _auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  singouth()async{
    return await _auth.signOut();
  }


}