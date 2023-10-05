// ignore_for_file: must_be_immutable

part of 'home_menu_bloc.dart';

/// Represents the state of HomeMenu in the application.
class HomeMenuState extends Equatable {
  HomeMenuState({this.homeMenuModelObj});

  HomeMenuModel? homeMenuModelObj;

  @override
  List<Object?> get props => [
        homeMenuModelObj,
      ];
  HomeMenuState copyWith({HomeMenuModel? homeMenuModelObj}) {
    return HomeMenuState(
      homeMenuModelObj: homeMenuModelObj ?? this.homeMenuModelObj,
    );
  }
}
