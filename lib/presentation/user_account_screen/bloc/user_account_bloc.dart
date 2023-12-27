import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wilt/presentation/user_account_screen/models/user_account_model.dart';
part 'user_account_event.dart';
part 'user_account_state.dart';

class UserAccountBloc extends Bloc<UserAccountEvent, UserAccountState> {
  UserAccountBloc(UserAccountState initialState) : super(initialState) {
    on<UserAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserAccountInitialEvent event,
    Emitter<UserAccountState> emit,
  ) async {}
}
