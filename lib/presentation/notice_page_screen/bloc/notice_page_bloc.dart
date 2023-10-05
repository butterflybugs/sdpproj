import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:application1/presentation/notice_page_screen/models/notice_page_model.dart';
part 'notice_page_event.dart';
part 'notice_page_state.dart';

/// A bloc that manages the state of a NoticePage according to the event that is dispatched to it.
class NoticePageBloc extends Bloc<NoticePageEvent, NoticePageState> {
  NoticePageBloc(NoticePageState initialState) : super(initialState) {
    on<NoticePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoticePageInitialEvent event,
    Emitter<NoticePageState> emit,
  ) async {}
}
