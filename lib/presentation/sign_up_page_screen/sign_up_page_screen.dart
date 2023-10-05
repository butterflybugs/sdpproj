import 'bloc/sign_up_page_bloc.dart';
import 'models/sign_up_page_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpPageBloc>(
        create: (context) => SignUpPageBloc(
            SignUpPageState(signUpPageModelObj: SignUpPageModel()))
          ..add(SignUpPageInitialEvent()),
        child: SignUpPageScreen());
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 56.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 61.h, top: 62.v),
                              child: Text("lbl_welcome".tr,
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 45.v),
                      Text("lbl_sign_up2".tr,
                          style: CustomTextStyles.headlineLargeLime800),
                      SizedBox(height: 32.v),
                      BlocSelector<SignUpPageBloc, SignUpPageState,
                              TextEditingController?>(
                          selector: (state) => state.fullNameController,
                          builder: (context, fullNameController) {
                            return CustomTextFormField(
                                controller: fullNameController,
                                hintText: "lbl_full_name".tr,
                                hintStyle: theme.textTheme.titleMedium!,
                                validator: (value) {
                                  if (!isText(value)) {
                                    return "Please enter valid text";
                                  }
                                  return null;
                                });
                          }),
                      SizedBox(height: 24.v),
                      BlocSelector<SignUpPageBloc, SignUpPageState,
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
                      SizedBox(height: 24.v),
                      BlocSelector<SignUpPageBloc, SignUpPageState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                hintStyle: theme.textTheme.titleMedium!,
                                textInputType: TextInputType.visiblePassword,
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
                      SizedBox(height: 24.v),
                      BlocSelector<SignUpPageBloc, SignUpPageState,
                              TextEditingController?>(
                          selector: (state) => state.confirmpasswordController,
                          builder: (context, confirmpasswordController) {
                            return CustomTextFormField(
                                controller: confirmpasswordController,
                                hintText: "msg_confirm_password".tr,
                                hintStyle: theme.textTheme.titleMedium!,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
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
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          width: 109.h,
                          text: "lbl_sign_in".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumBluegray9000116,
                          onTap: () {
                            onTapSignin(context);
                          },
                          alignment: Alignment.centerRight),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 46.h, top: 70.v, right: 32.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_already_have_an".tr,
                                    style: CustomTextStyles.bodyLargeWhiteA700),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogin(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("lbl_log_in2".tr,
                                            style: CustomTextStyles
                                                .titleMediumLime800)))
                              ]))
                    ])))));
  }

  /// Navigates to the additionalDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the additionalDetailsScreen.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.additionalDetailsScreen,
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginPageScreen.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
