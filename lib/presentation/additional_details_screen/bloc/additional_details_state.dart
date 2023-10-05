// ignore_for_file: must_be_immutable

part of 'additional_details_bloc.dart';

/// Represents the state of AdditionalDetails in the application.
class AdditionalDetailsState extends Equatable {
  AdditionalDetailsState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.additionalDetailsModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  AdditionalDetailsModel? additionalDetailsModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        additionalDetailsModelObj,
      ];
  AdditionalDetailsState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    AdditionalDetailsModel? additionalDetailsModelObj,
  }) {
    return AdditionalDetailsState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      additionalDetailsModelObj:
          additionalDetailsModelObj ?? this.additionalDetailsModelObj,
    );
  }
}
