// ignore_for_file: must_be_immutable

part of 'log_hours_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogHoursPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogHoursPageEvent extends Equatable {}

/// Event that is dispatched when the LogHoursPage widget is first created.
class LogHoursPageInitialEvent extends LogHoursPageEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends LogHoursPageEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends LogHoursPageEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
