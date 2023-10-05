import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/detail_options_screen/models/detail_options_model.dart';
part 'detail_options_event.dart';
part 'detail_options_state.dart';

/// A bloc that manages the state of a DetailOptions according to the event that is dispatched to it.
class DetailOptionsBloc extends Bloc<DetailOptionsEvent, DetailOptionsState> {
  DetailOptionsBloc(DetailOptionsState initialState) : super(initialState) {
    on<DetailOptionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailOptionsInitialEvent event,
    Emitter<DetailOptionsState> emit,
  ) async {
    emit(state.copyWith(gradeCounterController: TextEditingController()));
  }
}
