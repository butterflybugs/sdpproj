import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/additional_details_screen/models/additional_details_model.dart';
part 'additional_details_event.dart';
part 'additional_details_state.dart';

/// A bloc that manages the state of a AdditionalDetails according to the event that is dispatched to it.
class AdditionalDetailsBloc
    extends Bloc<AdditionalDetailsEvent, AdditionalDetailsState> {
  AdditionalDetailsBloc(AdditionalDetailsState initialState)
      : super(initialState) {
    on<AdditionalDetailsInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
  }

  _onInitialize(
    AdditionalDetailsInitialEvent event,
    Emitter<AdditionalDetailsState> emit,
  ) async {
    emit(state.copyWith(
        additionalDetailsModelObj: state.additionalDetailsModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1(),
            dropdownItemList2: fillDropdownItemList2())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AdditionalDetailsState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<AdditionalDetailsState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<AdditionalDetailsState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue2: event.value));
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

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
