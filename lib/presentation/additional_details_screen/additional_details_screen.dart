import 'bloc/additional_details_bloc.dart';
import 'models/additional_details_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AdditionalDetailsScreen extends StatelessWidget {
  const AdditionalDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AdditionalDetailsBloc>(
        create: (context) => AdditionalDetailsBloc(AdditionalDetailsState(
            additionalDetailsModelObj: AdditionalDetailsModel()))
          ..add(AdditionalDetailsInitialEvent()),
        child: AdditionalDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                      BlocSelector<AdditionalDetailsBloc,
                              AdditionalDetailsState, AdditionalDetailsModel?>(
                          selector: (state) => state.additionalDetailsModelObj,
                          builder: (context, additionalDetailsModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 13.h, 12.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .img8679900arrowdropdownlineicon1)),
                                margin: EdgeInsets.only(top: 113.v, right: 6.h),
                                hintText: "msg_select_your_grade".tr,
                                items: additionalDetailsModelObj
                                        ?.dropdownItemList ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AdditionalDetailsBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                });
                          }),
                      BlocSelector<AdditionalDetailsBloc,
                              AdditionalDetailsState, AdditionalDetailsModel?>(
                          selector: (state) => state.additionalDetailsModelObj,
                          builder: (context, additionalDetailsModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 23.h, 14.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .img8679900arrowdropdownlineicon1)),
                                margin: EdgeInsets.only(top: 33.v, right: 6.h),
                                hintText: "msg_select_your_class".tr,
                                items: additionalDetailsModelObj
                                        ?.dropdownItemList1 ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AdditionalDetailsBloc>()
                                      .add(ChangeDropDown1Event(value: value));
                                });
                          }),
                      BlocSelector<AdditionalDetailsBloc,
                              AdditionalDetailsState, AdditionalDetailsModel?>(
                          selector: (state) => state.additionalDetailsModelObj,
                          builder: (context, additionalDetailsModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 15.v, 23.h, 14.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .img8679900arrowdropdownlineicon1)),
                                margin: EdgeInsets.only(top: 33.v, right: 6.h),
                                hintText: "msg_select_your_house".tr,
                                items: additionalDetailsModelObj
                                        ?.dropdownItemList2 ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<AdditionalDetailsBloc>()
                                      .add(ChangeDropDown2Event(value: value));
                                });
                          }),
                      SizedBox(height: 64.v),
                      CustomElevatedButton(
                          width: 137.h,
                          text: "lbl_submit".tr,
                          onTap: () {
                            onTapSubmit(context);
                          },
                          alignment: Alignment.center)
                    ]))));
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
