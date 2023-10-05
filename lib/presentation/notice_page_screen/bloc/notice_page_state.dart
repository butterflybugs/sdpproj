// ignore_for_file: must_be_immutable

part of 'notice_page_bloc.dart';

/// Represents the state of NoticePage in the application.
class NoticePageState extends Equatable {
  NoticePageState({this.noticePageModelObj});

  NoticePageModel? noticePageModelObj;

  @override
  List<Object?> get props => [
        noticePageModelObj,
      ];
  NoticePageState copyWith({NoticePageModel? noticePageModelObj}) {
    return NoticePageState(
      noticePageModelObj: noticePageModelObj ?? this.noticePageModelObj,
    );
  }
}
