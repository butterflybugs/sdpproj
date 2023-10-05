import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/home_menu_screen/models/home_menu_model.dart';
part 'home_menu_event.dart';
part 'home_menu_state.dart';

/// A bloc that manages the state of a HomeMenu according to the event that is dispatched to it.
class HomeMenuBloc extends Bloc<HomeMenuEvent, HomeMenuState> {
  HomeMenuBloc(HomeMenuState initialState) : super(initialState) {
    on<HomeMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeMenuInitialEvent event,
    Emitter<HomeMenuState> emit,
  ) async {}
}
