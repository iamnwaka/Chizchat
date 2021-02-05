import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:chizchat/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final authService = AuthService();
  final googleSignIn = GoogleSignIn(scopes: ['email']);

  // User _userFromFirebaseUser(FirebaseUser user) {
  //   return user != null ? User(uid: user.id) : null;
  // }
  Future<UserCredential> signInWithCredential(AuthCredential credential) =>
      _auth.signInWithCredential(credential);
  Future<void> logout() => _auth.signOut();
  Stream<User> get currentUser => _auth.authStateChanges();
  // signIn Annon
  // Future signInAnnon() async {
  //   try {
  //     AuthResult result = await _auth.signInAnonymously();
  //     FirebaseUser user = result.user;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
  // Signin Google
  loginGoogle() async {
    try {
      // ignore: unused_local_variable
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      // ignore: unused_local_variable
      final result = await authService.signInWithCredential(credential);
    } catch (e) {
      print(e);
    }
  }

  // Register Google

  // signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
