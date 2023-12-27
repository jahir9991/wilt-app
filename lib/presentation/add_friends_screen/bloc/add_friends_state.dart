// ignore_for_file: must_be_immutable

part of 'add_friends_bloc.dart';

class AddFriendsState extends Equatable {
  AddFriendsState({this.addFriendsModelObj});

  AddFriendsModel? addFriendsModelObj;

  @override
  List<Object?> get props => [
        addFriendsModelObj,
      ];
  AddFriendsState copyWith({AddFriendsModel? addFriendsModelObj}) {
    return AddFriendsState(
      addFriendsModelObj: addFriendsModelObj ?? this.addFriendsModelObj,
    );
  }
}
