import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseClient{
  FirebaseClient._();

  static final FirebaseClient _instance = FirebaseClient._();

  factory FirebaseClient() => _instance;

  Future<UserCredential?> createUser(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<UserCredential?> userSignIn(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
    }
    return null;
  }

  userSignOut() async {
    try{
      await FirebaseAuth.instance.signOut();
    } catch(error){
      debugPrint(error.toString());
    }
  }

  User? getUser(){
    User? user;
    /// Events are fired when the following occurs:
    /// Right after the listener has been registered.
    /// When a user is signed in.
    /// When the current user is signed out.
    /// When there is a change in the current user's token.
    /// When the following methods provided by FirebaseAuth.instance.currentUser are called:
    /// reload(), unlink(), updateEmail(), updatePassword()
    /// updatePhoneNumber(), updateProfile()
    FirebaseAuth.instance.userChanges().listen((User? user) {
      user = user;
      if (user == null) {
        debugPrint('User is currently signed out!');
      } else {
        debugPrint('User is signed in!');
      }
    });
    return user;
  }
}