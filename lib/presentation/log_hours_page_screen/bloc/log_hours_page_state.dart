// ignore_for_file: must_be_immutable

part of 'log_hours_page_bloc.dart';

/// Represents the state of LogHoursPage in the application.
class LogHoursPageState extends Equatable {
  LogHoursPageState({
    this.enterhourslabelController,
    this.entersliplabelController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.logHoursPageModelObj,
  });

  TextEditingController? enterhourslabelController;

  TextEditingController? entersliplabelController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  LogHoursPageModel? logHoursPageModelObj;

  @override
  List<Object?> get props => [
        enterhourslabelController,
        entersliplabelController,
        selectedDropDownValue,
        selectedDropDownValue1,
        logHoursPageModelObj,
      ];
  LogHoursPageState copyWith({
    TextEditingController? enterhourslabelController,
    TextEditingController? entersliplabelController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    LogHoursPageModel? logHoursPageModelObj,
  }) {
    return LogHoursPageState(
      enterhourslabelController:
          enterhourslabelController ?? this.enterhourslabelController,
      entersliplabelController:
          entersliplabelController ?? this.entersliplabelController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      logHoursPageModelObj: logHoursPageModelObj ?? this.logHoursPageModelObj,
    );
  }
}
