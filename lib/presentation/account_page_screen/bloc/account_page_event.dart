// ignore_for_file: must_be_immutable

part of 'account_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountPageEvent extends Equatable {}

/// Event that is dispatched when the AccountPage widget is first created.
class AccountPageInitialEvent extends AccountPageEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AccountPageEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AccountPageEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends AccountPageEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
