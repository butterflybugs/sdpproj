// ignore_for_file: must_be_immutable

part of 'menu_bar_bloc.dart';

/// Represents the state of MenuBar in the application.
class MenuBarState extends Equatable {
  MenuBarState({
    this.homevalueoneController,
    this.menuBarModelObj,
  });

  TextEditingController? homevalueoneController;

  MenuBarModel? menuBarModelObj;

  @override
  List<Object?> get props => [
        homevalueoneController,
        menuBarModelObj,
      ];
  MenuBarState copyWith({
    TextEditingController? homevalueoneController,
    MenuBarModel? menuBarModelObj,
  }) {
    return MenuBarState(
      homevalueoneController:
          homevalueoneController ?? this.homevalueoneController,
      menuBarModelObj: menuBarModelObj ?? this.menuBarModelObj,
    );
  }
}
