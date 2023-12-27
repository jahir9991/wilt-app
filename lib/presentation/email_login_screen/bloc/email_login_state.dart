// ignore_for_file: must_be_immutable

part of 'email_login_bloc.dart';

class EmailLoginState extends Equatable {
  EmailLoginState({
    this.group10198Controller,
    this.group10198OneController,
    this.isShowPassword = true,
    this.emailLoginModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  EmailLoginModel? emailLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        isShowPassword,
        emailLoginModelObj,
      ];
  EmailLoginState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    bool? isShowPassword,
    EmailLoginModel? emailLoginModelObj,
  }) {
    return EmailLoginState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      emailLoginModelObj: emailLoginModelObj ?? this.emailLoginModelObj,
    );
  }
}
