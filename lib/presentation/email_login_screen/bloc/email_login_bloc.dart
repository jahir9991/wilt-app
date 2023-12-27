import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wilt/presentation/email_login_screen/models/email_login_model.dart';
part 'email_login_event.dart';
part 'email_login_state.dart';

class EmailLoginBloc extends Bloc<EmailLoginEvent, EmailLoginState> {
  EmailLoginBloc(EmailLoginState initialState) : super(initialState) {
    on<EmailLoginInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<EmailLoginState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    EmailLoginInitialEvent event,
    Emitter<EmailLoginState> emit,
  ) async {
    emit(state.copyWith(
        group10198Controller: TextEditingController(),
        group10198OneController: TextEditingController(),
        isShowPassword: true));
  }
}
