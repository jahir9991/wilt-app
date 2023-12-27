// ignore_for_file: must_be_immutable

part of 'contact_sharing_bloc.dart';

class ContactSharingState extends Equatable {
  ContactSharingState({
    this.emailOneController,
    this.group3670Controller,
    this.contactSharingModelObj,
  });

  TextEditingController? emailOneController;

  TextEditingController? group3670Controller;

  ContactSharingModel? contactSharingModelObj;

  @override
  List<Object?> get props => [
        emailOneController,
        group3670Controller,
        contactSharingModelObj,
      ];
  ContactSharingState copyWith({
    TextEditingController? emailOneController,
    TextEditingController? group3670Controller,
    ContactSharingModel? contactSharingModelObj,
  }) {
    return ContactSharingState(
      emailOneController: emailOneController ?? this.emailOneController,
      group3670Controller: group3670Controller ?? this.group3670Controller,
      contactSharingModelObj:
          contactSharingModelObj ?? this.contactSharingModelObj,
    );
  }
}
