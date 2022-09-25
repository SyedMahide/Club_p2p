import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
// import 'package:meta/meta.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<SuccessNotificationEvent>((SuccessNotificationEvent event,
        Emitter<NotificationState> emit) async {
      emit(SuccessNotificationState(event.message));
      emit(NotificationInitial());
    }, transformer: droppable());
    on<ErrorNotificationEvent>(
        (ErrorNotificationEvent event, Emitter<NotificationState> emit) async {
      final String message = (event.message?.length ?? 0) > 160
          ? 'Something Went Wrong!'
          : event.message ?? 'Something Went Wrong!';
      emit(ErrorNotificationState(message));
      emit(NotificationInitial());
    }, transformer: droppable());
    on<SilentNotificationEvent>(
        (SilentNotificationEvent event, Emitter<NotificationState> emit) async {
      emit(SilentNotificationState(event.message));
      emit(NotificationInitial());
    }, transformer: droppable());

    on<NoInternetConnectionNotificationEvent>(
        (NoInternetConnectionNotificationEvent event,
            Emitter<NotificationState> emit) async {
      emit(NoInternetConnectionNotificationState());
      await Future<void>.delayed(const Duration(seconds: 5), () {
        emit(NotificationUpdatedState());
      });
    }, transformer: droppable());
  }

  static NotificationBloc get to => Get.find();
}
