import 'package:flutter/material.dart';
import 'package:application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:application1/presentation/additional_details_screen/additional_details_screen.dart';
import 'package:application1/presentation/home_menu_screen/home_menu_screen.dart';
import 'package:application1/presentation/log_hours_page_screen/log_hours_page_screen.dart';
import 'package:application1/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:application1/presentation/account_page_screen/account_page_screen.dart';
import 'package:application1/presentation/notice_page_screen/notice_page_screen.dart';
import 'package:application1/presentation/detail_options_screen/detail_options_screen.dart';
import 'package:application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String additionalDetailsScreen = '/additional_details_screen';

  static const String homeMenuScreen = '/home_menu_screen';

  static const String logHoursPageScreen = '/log_hours_page_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String accountPageScreen = '/account_page_screen';

  static const String noticePageScreen = '/notice_page_screen';

  static const String detailOptionsScreen = '/detail_options_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginPageScreen: LoginPageScreen.builder,
        additionalDetailsScreen: AdditionalDetailsScreen.builder,
        homeMenuScreen: HomeMenuScreen.builder,
        logHoursPageScreen: LogHoursPageScreen.builder,
        signUpPageScreen: SignUpPageScreen.builder,
        accountPageScreen: AccountPageScreen.builder,
        noticePageScreen: NoticePageScreen.builder,
        detailOptionsScreen: DetailOptionsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginPageScreen.builder
      };
}
