// ignore_for_file: must_be_immutable

part of 'detail_options_bloc.dart';

/// Represents the state of DetailOptions in the application.
class DetailOptionsState extends Equatable {
  DetailOptionsState({
    this.gradeCounterController,
    this.detailOptionsModelObj,
  });

  TextEditingController? gradeCounterController;

  DetailOptionsModel? detailOptionsModelObj;

  @override
  List<Object?> get props => [
        gradeCounterController,
        detailOptionsModelObj,
      ];
  DetailOptionsState copyWith({
    TextEditingController? gradeCounterController,
    DetailOptionsModel? detailOptionsModelObj,
  }) {
    return DetailOptionsState(
      gradeCounterController:
          gradeCounterController ?? this.gradeCounterController,
      detailOptionsModelObj:
          detailOptionsModelObj ?? this.detailOptionsModelObj,
    );
  }
}
