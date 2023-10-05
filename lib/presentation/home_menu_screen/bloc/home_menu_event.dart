// ignore_for_file: must_be_immutable

part of 'home_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeMenuEvent extends Equatable {}

/// Event that is dispatched when the HomeMenu widget is first created.
class HomeMenuInitialEvent extends HomeMenuEvent {
  @override
  List<Object?> get props => [];
}
