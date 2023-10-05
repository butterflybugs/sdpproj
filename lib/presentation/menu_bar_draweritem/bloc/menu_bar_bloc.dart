import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/menu_bar_draweritem/models/menu_bar_model.dart';
part 'menu_bar_event.dart';
part 'menu_bar_state.dart';

/// A bloc that manages the state of a MenuBar according to the event that is dispatched to it.
class MenuBarBloc extends Bloc<MenuBarEvent, MenuBarState> {
  MenuBarBloc(MenuBarState initialState) : super(initialState) {
    on<MenuBarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MenuBarInitialEvent event,
    Emitter<MenuBarState> emit,
  ) async {
    emit(state.copyWith(homevalueoneController: TextEditingController()));
  }
}
