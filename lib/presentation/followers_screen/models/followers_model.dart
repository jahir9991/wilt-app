import 'package:equatable/equatable.dart';
import 'followers_item_model.dart';

// ignore: must_be_immutable
class FollowersModel extends Equatable {
  FollowersModel({this.followersItemList = const []});

  List<FollowersItemModel> followersItemList;

  FollowersModel copyWith({List<FollowersItemModel>? followersItemList}) {
    return FollowersModel(
      followersItemList: followersItemList ?? this.followersItemList,
    );
  }

  @override
  List<Object?> get props => [followersItemList];
}
