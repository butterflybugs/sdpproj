// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [home_menu_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeMenuModel extends Equatable {
  HomeMenuModel() {}

  HomeMenuModel copyWith() {
    return HomeMenuModel();
  }

  @override
  List<Object?> get props => [];
}
