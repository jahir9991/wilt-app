// ignore_for_file: must_be_immutable

part of 'followers_bloc.dart';

class FollowersState extends Equatable {
  FollowersState({this.followersModelObj});

  FollowersModel? followersModelObj;

  @override
  List<Object?> get props => [
        followersModelObj,
      ];
  FollowersState copyWith({FollowersModel? followersModelObj}) {
    return FollowersState(
      followersModelObj: followersModelObj ?? this.followersModelObj,
    );
  }
}
