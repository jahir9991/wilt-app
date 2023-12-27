import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wilt/presentation/contact_us_screen/models/contact_us_model.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';

class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  ContactUsBloc(ContactUsState initialState) : super(initialState) {
    on<ContactUsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ContactUsInitialEvent event,
    Emitter<ContactUsState> emit,
  ) async {
    emit(state.copyWith(
        group10198Controller: TextEditingController(),
        group10198OneController: TextEditingController(),
        group10198TwoController: TextEditingController(),
        group10199Controller: TextEditingController()));
  }
}
