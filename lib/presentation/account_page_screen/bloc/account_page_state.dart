// ignore_for_file: must_be_immutable

part of 'account_page_bloc.dart';

/// Represents the state of AccountPage in the application.
class AccountPageState extends Equatable {
  AccountPageState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.accountPageModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  AccountPageModel? accountPageModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        accountPageModelObj,
      ];
  AccountPageState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    AccountPageModel? accountPageModelObj,
  }) {
    return AccountPageState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      accountPageModelObj: accountPageModelObj ?? this.accountPageModelObj,
    );
  }
}
