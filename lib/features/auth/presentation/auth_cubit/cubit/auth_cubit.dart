import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndConditionCheckBox = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> forgoPasswordFormKey = GlobalKey<FormState>();
  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress!, password: password!);
      await addUserProfile();
      await verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      signUpHandleException(e);
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  void signUpHandleException(FirebaseAuthException e) {
      if (e.code == 'weak-password') {
      emit(SignUpFailureState(
          errMessage: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignUpFailureState(
          errMessage: 'The account already exists for that email.'));
    } else if (e.code == 'invalid-Email') {
      emit(SignUpFailureState(errMessage: 'this Email is invalid.'));
    } else {
      emit(SignInFailureState(errMessage: e.code));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBox = newValue;
    emit(TermsAndConditionUpdateState());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errMessage: 'No User found for that E-mail.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(SignInFailureState(errMessage: 'Check your E-mail and Password.'));
      }
    } catch (e) {
      emit(SignInFailureState(errMessage: e.toString()));
    }
  }

  Future<void> resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    } on Exception catch (e) {
      emit(ResetPasswordFailureState(errMessage: e.toString()));
    }
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      'email': emailAddress,
      'first_name': firstName,
      'last_name': lastName
    });
  }
}
