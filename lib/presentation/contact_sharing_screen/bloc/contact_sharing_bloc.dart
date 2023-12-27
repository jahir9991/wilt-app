import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wilt/presentation/contact_sharing_screen/models/contact_sharing_model.dart';
part 'contact_sharing_event.dart';
part 'contact_sharing_state.dart';

class ContactSharingBloc
    extends Bloc<ContactSharingEvent, ContactSharingState> {
  ContactSharingBloc(ContactSharingState initialState) : super(initialState) {
    on<ContactSharingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ContactSharingInitialEvent event,
    Emitter<ContactSharingState> emit,
  ) async {
    emit(state.copyWith(
        emailOneController: TextEditingController(),
        group3670Controller: TextEditingController()));
  }
}
