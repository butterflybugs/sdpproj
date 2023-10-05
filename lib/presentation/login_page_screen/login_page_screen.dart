import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
        create: (context) =>
            LoginPageBloc(LoginPageState(loginPageModelObj: LoginPageModel()))
              ..add(LoginPageInitialEvent()),
        child: LoginPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 46.v),
                          Text("lbl_c_c_e".tr,
                              style: theme.textTheme.displayLarge),
                          SizedBox(height: 60.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_login".tr,
                                  style: CustomTextStyles.displayMediumMedium)),
                          SizedBox(height: 25.v),
                          BlocSelector<LoginPageBloc, LoginPageState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    hintStyle: theme.textTheme.titleMedium!,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          SizedBox(height: 27.v),
                          BlocSelector<LoginPageBloc, LoginPageState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    hintStyle: theme.textTheme.titleMedium!,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true);
                              }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("msg_forgot_password".tr,
                                  style:
                                      CustomTextStyles.titleMediumLime800_1)),
                          SizedBox(height: 59.v),
                          CustomElevatedButton(
                              height: 48.v,
                              width: 115.h,
                              text: "lbl_login2".tr,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumBluegray90001,
                              onTap: () {
                                onTapLogin(context);
                              },
                              alignment: Alignment.centerRight),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapRowconfirmation(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text(
                                            "msg_dont_have_an_account".tr,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA700)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleSmallLime800Bold))
                                  ]))
                        ])))));
  }

  /// Navigates to the homeMenuScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the homeMenuScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeMenuScreen,
    );
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signUpPageScreen.
  onTapRowconfirmation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpPageScreen,
    );
  }
}
