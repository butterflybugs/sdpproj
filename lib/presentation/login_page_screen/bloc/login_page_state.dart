// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.emailController,
    this.passwordController,
    this.loginPageModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginPageModel? loginPageModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
