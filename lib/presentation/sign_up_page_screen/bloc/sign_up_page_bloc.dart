import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/sign_up_page_screen/models/sign_up_page_model.dart';
part 'sign_up_page_event.dart';
part 'sign_up_page_state.dart';

/// A bloc that manages the state of a SignUpPage according to the event that is dispatched to it.
class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  SignUpPageBloc(SignUpPageState initialState) : super(initialState) {
    on<SignUpPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpPageInitialEvent event,
    Emitter<SignUpPageState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController()));
  }
}
