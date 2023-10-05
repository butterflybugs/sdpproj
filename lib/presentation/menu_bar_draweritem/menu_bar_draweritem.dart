import 'bloc/menu_bar_bloc.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MenuBarDraweritem extends StatelessWidget {
  const MenuBarDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 271.h,
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 23.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.v),
                  BlocSelector<MenuBarBloc, MenuBarState,
                          TextEditingController?>(
                      selector: (state) => state.homevalueoneController,
                      builder: (context, homevalueoneController) {
                        return CustomTextFormField(
                            width: 251.h,
                            controller: homevalueoneController,
                            hintText: "lbl_home".tr,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(22.h, 7.v, 25.h, 11.v),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.img8541853homeicon1)),
                            prefixConstraints: BoxConstraints(maxHeight: 43.v),
                            contentPadding: EdgeInsets.only(
                                top: 8.v, right: 30.h, bottom: 8.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineBlackTL5,
                            fillColor: appTheme.blueGray900);
                      }),
                  GestureDetector(
                      onTap: () {
                        onTapRowarrowdown(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h, top: 17.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowdown,
                                height: 18.v,
                                width: 25.h,
                                margin: EdgeInsets.only(top: 4.v, bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text("lbl_notice".tr,
                                    style: theme.textTheme.titleLarge))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRow1564534custo(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h, top: 26.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.img1564534custome,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(top: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text("lbl_account".tr,
                                    style: theme.textTheme.titleLarge))
                          ]))),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        onTapRowcalculator(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 25.h),
                                child: Text("lbl_log_out".tr,
                                    style: theme.textTheme.titleLarge))
                          ])))
                ])));
  }

  /// Navigates to the noticePageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the noticePageScreen.
  onTapRowarrowdown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.noticePageScreen,
    );
  }

  /// Navigates to the accountPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the accountPageScreen.
  onTapRow1564534custo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountPageScreen,
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginPageScreen.
  onTapRowcalculator(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
