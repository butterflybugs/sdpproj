import 'bloc/notice_page_bloc.dart';
import 'models/notice_page_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NoticePageScreen extends StatelessWidget {
  const NoticePageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NoticePageBloc>(
      create: (context) => NoticePageBloc(NoticePageState(
        noticePageModelObj: NoticePageModel(),
      ))
        ..add(NoticePageInitialEvent()),
      child: NoticePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NoticePageBloc, NoticePageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blueGray100,
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
              title: AppbarSubtitle(
                text: "lbl_notice".tr,
                margin: EdgeInsets.only(
                  left: 80.h,
                  top: 55.v,
                  bottom: 28.v,
                ),
              ),
              styleType: Style.bgFill,
            ),
            body: Container(
              width: 366.h,
              margin: EdgeInsets.fromLTRB(14.h, 29.v, 10.h, 5.v),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineBlack9003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_25_aug_2023".tr,
                      style: CustomTextStyles.titleSmallGray600,
                    ),
                  ),
                  Container(
                    width: 324.h,
                    margin: EdgeInsets.only(
                      top: 21.v,
                      right: 22.h,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
