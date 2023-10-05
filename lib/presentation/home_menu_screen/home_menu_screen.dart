import 'bloc/home_menu_bloc.dart';
import 'models/home_menu_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:application1/widgets/app_bar/appbar_image.dart';
import 'package:application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:application1/widgets/app_bar/custom_app_bar.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeMenuBloc>(
        create: (context) =>
            HomeMenuBloc(HomeMenuState(homeMenuModelObj: HomeMenuModel()))
              ..add(HomeMenuInitialEvent()),
        child: HomeMenuScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<HomeMenuBloc, HomeMenuState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 60.h,
                  leading: AppbarIconbutton(
                      svgPath: ImageConstant.img134216menulin,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v)),
                  actions: [
                    AppbarSubtitle1(
                        text: "lbl_john_doe".tr,
                        margin: EdgeInsets.fromLTRB(13.h, 18.v, 10.h, 10.v)),
                    AppbarImage(
                        svgPath: ImageConstant.imgSearch,
                        margin:
                            EdgeInsets.only(left: 9.h, top: 6.v, right: 23.h))
                  ]),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 50.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_connaught".tr,
                                style:
                                    CustomTextStyles.headlineLargeLime800_1)),
                        Text("lbl_total_hours_55".tr,
                            style: CustomTextStyles.titleMediumLime800SemiBold),
                        SizedBox(height: 46.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 12.v),
                            decoration: AppDecoration.fillBluegray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 7.v, right: 1.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 25.v),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.h, top: 21.v),
                                                child: Row(children: [
                                                  SizedBox(
                                                      width: 52.h,
                                                      child: Text(
                                                          "lbl_15_hrs".tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .headlineSmall)),
                                                  CustomElevatedButton(
                                                      height: 42.v,
                                                      width: 114.h,
                                                      text: "lbl_log_hours".tr,
                                                      margin: EdgeInsets.only(
                                                          top: 18.v),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillBlueGray,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleMediumWhiteA700SemiBold,
                                                      onTap: () {
                                                        onTapLoghours(context);
                                                      })
                                                ])),
                                            Container(
                                                width: 101.h,
                                                margin: EdgeInsets.only(
                                                    left: 8.h, top: 10.v),
                                                child: Text(
                                                    "msg_accumulated_for".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900))
                                          ])),
                                  Container(
                                      width: 358.h,
                                      margin: EdgeInsets.only(
                                          left: 1.h, top: 11.v, right: 1.h),
                                      padding: EdgeInsets.all(21.h),
                                      decoration: AppDecoration.outlineBlack900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_timetable".tr,
                                                style: CustomTextStyles
                                                    .titleMediumBlack900SemiBold),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            14.h,
                                                            35.v,
                                                            14.h,
                                                            24.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width: 34.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 1.v,
                                                                      bottom:
                                                                          4.v),
                                                              child: Text(
                                                                  "lbl_mon_28"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBlack900SemiBold)),
                                                          Container(
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      left:
                                                                          30.h),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5.h,
                                                                      vertical:
                                                                          1.v),
                                                              decoration: AppDecoration
                                                                  .fillBlueGray
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder7),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        height:
                                                                            3.v),
                                                                    SizedBox(
                                                                        width: 28
                                                                            .h,
                                                                        child: Text(
                                                                            "lbl_tue_29"
                                                                                .tr,
                                                                            maxLines:
                                                                                2,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: CustomTextStyles.titleMediumWhiteA700SemiBold))
                                                                  ])),
                                                          Container(
                                                              width: 34.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          30.h,
                                                                      top: 1.v,
                                                                      bottom:
                                                                          4.v),
                                                              child: Text(
                                                                  "lbl_wed_30"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBlack900SemiBold)),
                                                          Container(
                                                              width: 30.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          34.h,
                                                                      top: 1.v,
                                                                      bottom:
                                                                          4.v),
                                                              child: Text(
                                                                  "lbl_thu_31"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBlack900SemiBold)),
                                                          Container(
                                                              width: 19.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          33.h,
                                                                      bottom:
                                                                          4.v),
                                                              child: Text(
                                                                  "lbl_fri_1"
                                                                      .tr,
                                                                  maxLines: 3,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBlack900SemiBold))
                                                        ])))
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 1.h, top: 13.v, right: 1.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 17.h, vertical: 27.v),
                                      decoration: AppDecoration.outlineBlack900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                    "msg_teachers_and_activities"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack900SemiBold)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 24.v,
                                                    bottom: 69.v),
                                                child: Row(children: [
                                                  Text("lbl_sandwiches".tr,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 31.h),
                                                      child: Text(
                                                          "lbl_yvonne_sanders"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodyMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 50.h),
                                                      child: Text(
                                                          "lbl_50_hrs".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium))
                                                ]))
                                          ]))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the logHoursPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the logHoursPageScreen.
  onTapLoghours(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logHoursPageScreen,
    );
  }
}
