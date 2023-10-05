// ignore_for_file: must_be_immutable

part of 'additional_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AdditionalDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdditionalDetailsEvent extends Equatable {}

/// Event that is dispatched when the AdditionalDetails widget is first created.
class AdditionalDetailsInitialEvent extends AdditionalDetailsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AdditionalDetailsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends AdditionalDetailsEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends AdditionalDetailsEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
