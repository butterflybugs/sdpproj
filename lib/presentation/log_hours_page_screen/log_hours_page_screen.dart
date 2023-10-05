import 'bloc/log_hours_page_bloc.dart';
import 'models/log_hours_page_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/core/utils/validation_functions.dart';
import 'package:application1/widgets/app_bar/appbar_image_1.dart';
import 'package:application1/widgets/app_bar/appbar_title.dart';
import 'package:application1/widgets/app_bar/custom_app_bar.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:application1/widgets/custom_elevated_button.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogHoursPageScreen extends StatelessWidget {
  LogHoursPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogHoursPageBloc>(
        create: (context) => LogHoursPageBloc(
            LogHoursPageState(logHoursPageModelObj: LogHoursPageModel()))
          ..add(LogHoursPageInitialEvent()),
        child: LogHoursPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 35.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 10.h, top: 13.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_log_hours".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 15.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 30.v),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocSelector<LogHoursPageBloc, LogHoursPageState,
                                  LogHoursPageModel?>(
                              selector: (state) => state.logHoursPageModelObj,
                              builder: (context, logHoursPageModelObj) {
                                return CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 16.v, 23.h, 16.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .img8679900arrowdropdownlineicon1)),
                                    margin: EdgeInsets.only(right: 12.h),
                                    hintText: "msg_choose_type_of_hours".tr,
                                    items: logHoursPageModelObj
                                            ?.dropdownItemList ??
                                        [],
                                    contentPadding: EdgeInsets.only(
                                        left: 23.h, top: 20.v, bottom: 20.v),
                                    borderDecoration:
                                        DropDownStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700,
                                    onChanged: (value) {
                                      context.read<LogHoursPageBloc>().add(
                                          ChangeDropDownEvent(value: value));
                                    });
                              }),
                          BlocSelector<LogHoursPageBloc, LogHoursPageState,
                                  LogHoursPageModel?>(
                              selector: (state) => state.logHoursPageModelObj,
                              builder: (context, logHoursPageModelObj) {
                                return CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 16.v, 23.h, 16.v),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .img8679900arrowdropdownlineicon1)),
                                    margin:
                                        EdgeInsets.only(top: 19.v, right: 12.h),
                                    hintText: "msg_select_event_name".tr,
                                    items: logHoursPageModelObj
                                            ?.dropdownItemList1 ??
                                        [],
                                    contentPadding: EdgeInsets.only(
                                        left: 23.h, top: 20.v, bottom: 20.v),
                                    borderDecoration:
                                        DropDownStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700,
                                    onChanged: (value) {
                                      context.read<LogHoursPageBloc>().add(
                                          ChangeDropDown1Event(value: value));
                                    });
                              }),
                          BlocSelector<LogHoursPageBloc, LogHoursPageState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.enterhourslabelController,
                              builder: (context, enterhourslabelController) {
                                return CustomTextFormField(
                                    controller: enterhourslabelController,
                                    margin:
                                        EdgeInsets.only(top: 19.v, right: 12.h),
                                    hintText: "msg_enter_number_of".tr,
                                    hintStyle:
                                        CustomTextStyles.titleMediumMedium,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    },
                                    borderDecoration:
                                        TextFormFieldStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700);
                              }),
                          BlocSelector<LogHoursPageBloc, LogHoursPageState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.entersliplabelController,
                              builder: (context, entersliplabelController) {
                                return CustomTextFormField(
                                    controller: entersliplabelController,
                                    margin:
                                        EdgeInsets.only(top: 19.v, right: 12.h),
                                    hintText: "msg_enter_slip_number".tr,
                                    hintStyle:
                                        CustomTextStyles.titleMediumMedium,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    },
                                    borderDecoration:
                                        TextFormFieldStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700);
                              }),
                          Container(
                              margin: EdgeInsets.only(top: 19.v, right: 12.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 38.h, vertical: 37.v),
                              decoration: AppDecoration.outlineBlack9001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFile,
                                        height: 100.adaptSize,
                                        width: 100.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 63.h, top: 19.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 20.v),
                                        child: Text("msg_upload_jpg_or_pdf".tr,
                                            style: CustomTextStyles
                                                .titleMediumMedium16))
                                  ])),
                          SizedBox(height: 36.v),
                          CustomElevatedButton(
                              height: 62.v,
                              width: 194.h,
                              text: "lbl_submit2".tr,
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700,
                              alignment: Alignment.center),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
