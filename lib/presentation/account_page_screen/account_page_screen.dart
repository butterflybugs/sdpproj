import 'bloc/account_page_bloc.dart';
import 'models/account_page_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:application1/widgets/app_bar/custom_app_bar.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class AccountPageScreen extends StatelessWidget {
  const AccountPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountPageBloc>(
      create: (context) => AccountPageBloc(AccountPageState(
        accountPageModelObj: AccountPageModel(),
      ))
        ..add(AccountPageInitialEvent()),
      child: AccountPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: CustomAppBar(
          height: 118.v,
          leadingWidth: 60.h,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.img134216menulin,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 49.v,
              bottom: 25.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_john_doe".tr,
            margin: EdgeInsets.only(
              top: 55.v,
              bottom: 28.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Container(
                width: 373.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  right: 3.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_personal_details".tr,
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.v,
                        right: 31.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text(
                              "lbl_full_name2".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 15.h,
                              bottom: 3.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_john_doe".tr,
                              style: CustomTextStyles.labelLargeGray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 31.h,
                        bottom: 7.v,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_grade".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "lbl_class".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_house".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 81.v,
                            width: 230.h,
                            margin: EdgeInsets.only(left: 38.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                BlocSelector<AccountPageBloc, AccountPageState,
                                    AccountPageModel?>(
                                  selector: (state) =>
                                      state.accountPageModelObj,
                                  builder: (context, accountPageModelObj) {
                                    return CustomDropDown(
                                      width: 230.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(
                                          left: 30.h,
                                          right: 14.h,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .img8679900arrowdropdownlineicon1,
                                        ),
                                      ),
                                      hintText: "lbl_11".tr,
                                      hintStyle: theme.textTheme.labelLarge!,
                                      alignment: Alignment.topCenter,
                                      items: accountPageModelObj
                                              ?.dropdownItemList ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                        left: 30.h,
                                        top: 6.v,
                                        bottom: 6.v,
                                      ),
                                      onChanged: (value) {
                                        context.read<AccountPageBloc>().add(
                                            ChangeDropDownEvent(value: value));
                                      },
                                    );
                                  },
                                ),
                                BlocSelector<AccountPageBloc, AccountPageState,
                                    AccountPageModel?>(
                                  selector: (state) =>
                                      state.accountPageModelObj,
                                  builder: (context, accountPageModelObj) {
                                    return CustomDropDown(
                                      width: 230.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(
                                          left: 30.h,
                                          right: 14.h,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .img8679900arrowdropdownlineicon1,
                                        ),
                                      ),
                                      hintText: "lbl_e".tr,
                                      hintStyle: theme.textTheme.labelLarge!,
                                      alignment: Alignment.center,
                                      items: accountPageModelObj
                                              ?.dropdownItemList1 ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                        left: 30.h,
                                        top: 6.v,
                                        bottom: 6.v,
                                      ),
                                      onChanged: (value) {
                                        context.read<AccountPageBloc>().add(
                                            ChangeDropDown1Event(value: value));
                                      },
                                    );
                                  },
                                ),
                                BlocSelector<AccountPageBloc, AccountPageState,
                                    AccountPageModel?>(
                                  selector: (state) =>
                                      state.accountPageModelObj,
                                  builder: (context, accountPageModelObj) {
                                    return CustomDropDown(
                                      width: 230.h,
                                      icon: Container(
                                        margin: EdgeInsets.only(
                                          left: 30.h,
                                          right: 14.h,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .img8679900arrowdropdownlineicon1,
                                        ),
                                      ),
                                      hintText: "lbl_connaught".tr,
                                      hintStyle: theme.textTheme.labelLarge!,
                                      alignment: Alignment.bottomCenter,
                                      items: accountPageModelObj
                                              ?.dropdownItemList2 ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                        left: 30.h,
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                      onChanged: (value) {
                                        context.read<AccountPageBloc>().add(
                                            ChangeDropDown2Event(value: value));
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 20.v,
                  right: 3.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_progress".tr,
                        style: CustomTextStyles.titleMediumBlack900_1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 1.v,
                        right: 3.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_prefect".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Text(
                                  "msg_55_hrs_of_600_hrs".tr,
                                  style: CustomTextStyles.bodySmallGray800,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          SizedBox(
                            height: 12.v,
                            width: 343.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 12.v,
                                    width: 342.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 12.v,
                                    width: 46.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray90001,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 12.v,
                        right: 3.h,
                        bottom: 23.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_colours".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Text(
                                  "msg_55_hrs_of_250_hrs".tr,
                                  style: CustomTextStyles.bodySmallGray800,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          SizedBox(
                            height: 12.v,
                            width: 343.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 12.v,
                                    width: 342.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 12.v,
                                    width: 125.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray90001,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 372.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 13.v,
                  bottom: 7.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_historical_hours".tr,
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 99.h,
                        top: 20.v,
                      ),
                      child: Text(
                        "lbl_250".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 42.h,
                        top: 3.v,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 13.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "lbl_200".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Container(
                                  height: 166.v,
                                  width: 28.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 196.v,
                            width: 28.h,
                            margin: EdgeInsets.only(left: 25.h),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray90001,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 25.h,
                              top: 34.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "lbl_180".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Container(
                                  height: 145.v,
                                  width: 28.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.h,
                              top: 133.v,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_55".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 1.v),
                                Container(
                                  height: 48.v,
                                  width: 28.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray90001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Divider(
                        indent: 13.h,
                        endIndent: 12.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 42.h,
                        top: 2.v,
                        bottom: 13.v,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_gr_8".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 31.h),
                            child: Text(
                              "lbl_gr_9".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 33.h),
                            child: Text(
                              "lbl_gr_10".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.h),
                            child: Text(
                              "lbl_gr_11".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
