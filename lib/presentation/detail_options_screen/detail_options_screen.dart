import 'bloc/detail_options_bloc.dart';
import 'models/detail_options_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DetailOptionsScreen extends StatelessWidget {
  const DetailOptionsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailOptionsBloc>(
        create: (context) => DetailOptionsBloc(
            DetailOptionsState(detailOptionsModelObj: DetailOptionsModel()))
          ..add(DetailOptionsInitialEvent()),
        child: DetailOptionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text("lbl_welcome_john".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 113.v),
                      SizedBox(
                          height: 366.v,
                          width: 304.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapRowselectyourgr(context);
                                        },
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(bottom: 305.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 13.h,
                                                vertical: 12.v),
                                            decoration: AppDecoration
                                                .fillBluegray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.h,
                                                          top: 10.v,
                                                          bottom: 4.v),
                                                      child: Text(
                                                          "msg_select_your_grade"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodyLarge)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .img8679900arrowd,
                                                      height: 34.v,
                                                      width: 46.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v))
                                                ])))),
                                CustomElevatedButton(
                                    width: 137.h,
                                    text: "lbl_submit".tr,
                                    onTap: () {
                                      onTapSubmit(context);
                                    },
                                    alignment: Alignment.bottomCenter),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 273.v,
                                        width: 304.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 23.h,
                                                              vertical: 16.v),
                                                      decoration: AppDecoration
                                                          .fillBluegray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Text(
                                                          "lbl_grade_8".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          top: 55.v),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 25.h,
                                                              vertical: 16.v),
                                                      decoration: AppDecoration
                                                          .fillBluegray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Text(
                                                          "lbl_grade_9".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 24.h,
                                                              vertical: 15.v),
                                                      decoration: AppDecoration
                                                          .fillBluegray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Text(
                                                          "lbl_grade_10".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: 46.v),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 24.h,
                                                              vertical: 15.v),
                                                      decoration: AppDecoration
                                                          .fillBluegray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder4),
                                                      child: Text(
                                                          "lbl_grade_11".tr,
                                                          style: theme.textTheme
                                                              .bodyLarge))),
                                              BlocSelector<
                                                      DetailOptionsBloc,
                                                      DetailOptionsState,
                                                      TextEditingController?>(
                                                  selector: (state) => state
                                                      .gradeCounterController,
                                                  builder: (context,
                                                      gradeCounterController) {
                                                    return CustomTextFormField(
                                                        width: 304.h,
                                                        controller:
                                                            gradeCounterController,
                                                        hintText:
                                                            "lbl_grade_12".tr,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        26.h,
                                                                    vertical:
                                                                        19.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .fillBlueGrayTL4);
                                                  })
                                            ])))
                              ]))
                    ]))));
  }

  /// Navigates to the additionalDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the additionalDetailsScreen.
  onTapRowselectyourgr(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.additionalDetailsScreen,
    );
  }

  /// Navigates to the homeMenuScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the homeMenuScreen.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeMenuScreen,
    );
  }
}
