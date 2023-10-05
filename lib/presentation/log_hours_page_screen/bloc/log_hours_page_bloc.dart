import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/log_hours_page_screen/models/log_hours_page_model.dart';
part 'log_hours_page_event.dart';
part 'log_hours_page_state.dart';

/// A bloc that manages the state of a LogHoursPage according to the event that is dispatched to it.
class LogHoursPageBloc extends Bloc<LogHoursPageEvent, LogHoursPageState> {
  LogHoursPageBloc(LogHoursPageState initialState) : super(initialState) {
    on<LogHoursPageInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<LogHoursPageState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<LogHoursPageState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    LogHoursPageInitialEvent event,
    Emitter<LogHoursPageState> emit,
  ) async {
    emit(state.copyWith(
        enterhourslabelController: TextEditingController(),
        entersliplabelController: TextEditingController()));
    emit(state.copyWith(
        logHoursPageModelObj: state.logHoursPageModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }
}
