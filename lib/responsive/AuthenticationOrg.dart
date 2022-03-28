import 'package:firebase_auth/firebase_auth.dart';

class AuthOrg {
  final FirebaseAuth _firebaseAuth;

  AuthOrg(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String?> signIn({required String email, required String pass}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: pass);
      return " Signed In ";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
