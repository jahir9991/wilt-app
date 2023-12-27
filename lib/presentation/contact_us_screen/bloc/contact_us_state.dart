// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

class ContactUsState extends Equatable {
  ContactUsState({
    this.group10198Controller,
    this.group10198OneController,
    this.group10198TwoController,
    this.group10199Controller,
    this.contactUsModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  TextEditingController? group10198TwoController;

  TextEditingController? group10199Controller;

  ContactUsModel? contactUsModelObj;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        group10198TwoController,
        group10199Controller,
        contactUsModelObj,
      ];
  ContactUsState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    TextEditingController? group10198TwoController,
    TextEditingController? group10199Controller,
    ContactUsModel? contactUsModelObj,
  }) {
    return ContactUsState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      group10198TwoController:
          group10198TwoController ?? this.group10198TwoController,
      group10199Controller: group10199Controller ?? this.group10199Controller,
      contactUsModelObj: contactUsModelObj ?? this.contactUsModelObj,
    );
  }
}
