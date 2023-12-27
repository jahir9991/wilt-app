// ignore_for_file: must_be_immutable

part of 'user_account_bloc.dart';

@immutable
abstract class UserAccountEvent extends Equatable {}

class UserAccountInitialEvent extends UserAccountEvent {
  @override
  List<Object?> get props => [];
}
