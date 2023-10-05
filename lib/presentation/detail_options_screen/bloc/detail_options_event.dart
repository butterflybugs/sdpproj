// ignore_for_file: must_be_immutable

part of 'detail_options_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailOptions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailOptionsEvent extends Equatable {}

/// Event that is dispatched when the DetailOptions widget is first created.
class DetailOptionsInitialEvent extends DetailOptionsEvent {
  @override
  List<Object?> get props => [];
}
