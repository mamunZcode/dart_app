// import 'package:dart_app/screen/home_screen.dart';
// import 'package:dart_app/screen/loginui/loginScreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// // import 'package:google_sign_in/google_sign_in.dart';
// class FirebaseAuthMethods {
//   // final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth _auth;
//   FirebaseAuthMethods(this._auth);
//
//   // FOR EVERY FUNCTION HERE
//   // POP THE ROUTE USING: Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
//
//   // GET USER DATA
//   // using null check operator since this method should be called only
//   // when the user is logged in
//   User get user => _auth.currentUser!;
//
//   // STATE PERSISTENCE STREAM
//   Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
//
//   // OTHER WAYS (depends on use case):
//   // Stream get authState => FirebaseAuth.instance.userChanges();
//   // Stream get authState => FirebaseAuth.instance.idTokenChanges();
//   // KNOW MORE ABOUT THEM HERE: https://firebase.flutter.dev/docs/auth/start#auth-state
//
//   // EMAIL SIGN UP
//   Future<void> signUpWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       if (!context.mounted) return;
//       // await sendEmailVerification(context);
//       if (!context.mounted) return;
//       Navigator.pushNamed(context, );
//     } on FirebaseAuthException catch (e) {
//       // if you want to display your own custom error message
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//       // showSnackBar(context, e.message!); // Displaying the usual firebase error message
//     }
//   }
//   // EMAIL LOGIN
//   Future<void> loginWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       if (!user.emailVerified) {
//         if (!context.mounted) return;
//         print('please verify your email');
//         await sendEmailVerification(context);
//         // restrict access to certain things using provider
//         // transition to another page instead of home screen
//       }
//       if (context.mounted) {
//         Navigator.replace(context,
//             oldRoute: ModalRoute.of(context)!,
//             newRoute:
//                 MaterialPageRoute(builder: (context) => const HomeScreen()));
//       }
//     } on FirebaseAuthException catch (e) {
//         snackBar(context, e.message!); // Displaying the error message
//     }
//   }
//   // EMAIL VERIFICATION
//   Future<void> sendEmailVerification(BuildContext context) async {
//     try {
//       _auth.currentUser!.sendEmailVerification();
//       // showSnackBar(context, 'Email verification sent!');
//     } on FirebaseAuthException catch (e) {
//       // showSnackBar(context, e.message!); // Display error message
//     }
//   }
//
//   // SIGN OUT
//   Future<void> signOut(BuildContext context) async {
//     try {
//       await _auth.signOut();
//       if (context.mounted) {
//         Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (context) => loginScreen()));
//       }
//     } on FirebaseAuthException catch (e) {
//       // showSnackBar(context, e.message!); // Displaying the error message
//     }
//   }
//
//   // DELETE ACCOUNT
//   Future<void> deleteAccount(BuildContext context) async {
//     try {
//       await _auth.currentUser!.delete();
//     } on FirebaseAuthException catch (e) {
//       // showSnackBar(context, e.message!); // Displaying the error message
//       // if an error of requires-recent-login is thrown, make sure to log
//       // in user again and then delete account.
//     }
//   }
//
//   void snackBar(BuildContext context, String s) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text(s),
//     ));
//   }
//   // Future<void> signInWithGoogle() async {
//   //   try {
//   //     // Trigger Google Sign In
//   //     final GoogleSignInAccount ? googleSignInAccount =
//   //     await _googleSignIn.signIn();
//   //
//   //     // If the user cancels the sign-in process
//   //     if (googleSignInAccount == null) return null;
//   //
//   //     // Obtain GoogleSignInAuthentication and authenticate with Firebase
//   //     final GoogleSignInAuthentication googleSignInAuthentication =
//   //     await googleSignInAccount.authentication;
//   //     final AuthCredential credential = GoogleAuthProvider.credential(
//   //       accessToken: googleSignInAuthentication.accessToken,
//   //       idToken: googleSignInAuthentication.idToken,
//   //     );
//   //
//   //     // Sign in to Firebase using Google credentials
//   //     final UserCredential authResult =
//   //     await _auth.signInWithCredential(credential);
//   //     final User? user = authResult.user;
//   //
//   //   } catch (e) {
//   //     print(e.toString());
//   //     return null;
//   //   }
//   // }
//
//
//
//
// }
