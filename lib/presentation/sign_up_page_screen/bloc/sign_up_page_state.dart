// ignore_for_file: must_be_immutable

part of 'sign_up_page_bloc.dart';

/// Represents the state of SignUpPage in the application.
class SignUpPageState extends Equatable {
  SignUpPageState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.signUpPageModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignUpPageModel? signUpPageModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        confirmpasswordController,
        signUpPageModelObj,
      ];
  SignUpPageState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SignUpPageModel? signUpPageModelObj,
  }) {
    return SignUpPageState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      signUpPageModelObj: signUpPageModelObj ?? this.signUpPageModelObj,
    );
  }
}
