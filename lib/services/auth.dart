import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<User?> signInAnon() async {
    final userCredential = await _firebaseAuth.signInAnonymously();

    return userCredential.user;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
