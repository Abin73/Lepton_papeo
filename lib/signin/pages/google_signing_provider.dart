import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;


  Future googleLogin() async {
   try { final googleUser = await googleSignIn.signIn();

  //  final GoogleSignInAuthentication? googleAuth = await  googleUser?.authentication;
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
   final userUid = FirebaseAuth.instance.currentUser?.uid;
      if (userUid != null) {
        await FirebaseFirestore.instance.collection('users').doc(userUid).set({
          'displayName': googleUser.displayName,
          'email': googleUser.email,
          'docid':userUid,
          'profilePhoto':googleUser.photoUrl,
        
          // Add other user details you want to store
        },SetOptions(merge: true));
      }





   } catch (e){
    print(e.toString());
   }

    notifyListeners();
  }

  Future logout() async{
await googleSignIn.disconnect();
FirebaseAuth.instance.signOut();
 }
}