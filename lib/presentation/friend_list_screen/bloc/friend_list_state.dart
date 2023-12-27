// ignore_for_file: must_be_immutable

part of 'friend_list_bloc.dart';

class FriendListState extends Equatable {
  FriendListState({this.friendListModelObj});

  FriendListModel? friendListModelObj;

  @override
  List<Object?> get props => [
        friendListModelObj,
      ];
  FriendListState copyWith({FriendListModel? friendListModelObj}) {
    return FriendListState(
      friendListModelObj: friendListModelObj ?? this.friendListModelObj,
    );
  }
}
