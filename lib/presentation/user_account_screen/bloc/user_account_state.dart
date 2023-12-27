// ignore_for_file: must_be_immutable

part of 'user_account_bloc.dart';

class UserAccountState extends Equatable {
  UserAccountState({this.userAccountModelObj});

  UserAccountModel? userAccountModelObj;

  @override
  List<Object?> get props => [
        userAccountModelObj,
      ];
  UserAccountState copyWith({UserAccountModel? userAccountModelObj}) {
    return UserAccountState(
      userAccountModelObj: userAccountModelObj ?? this.userAccountModelObj,
    );
  }
}
