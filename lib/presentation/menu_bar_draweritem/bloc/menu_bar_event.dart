// ignore_for_file: must_be_immutable

part of 'menu_bar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MenuBar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MenuBarEvent extends Equatable {}

/// Event that is dispatched when the MenuBar widget is first created.
class MenuBarInitialEvent extends MenuBarEvent {
  @override
  List<Object?> get props => [];
}
