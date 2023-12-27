// ignore_for_file: must_be_immutable

part of 'email_login_bloc.dart';

@immutable
abstract class EmailLoginEvent extends Equatable {}

class EmailLoginInitialEvent extends EmailLoginEvent {
  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends EmailLoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
