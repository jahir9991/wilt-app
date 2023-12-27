import 'package:equatable/equatable.dart';
import 'friendlist_item_model.dart';

// ignore: must_be_immutable
class FriendListModel extends Equatable {
  FriendListModel({this.friendlistItemList = const []});

  List<FriendlistItemModel> friendlistItemList;

  FriendListModel copyWith({List<FriendlistItemModel>? friendlistItemList}) {
    return FriendListModel(
      friendlistItemList: friendlistItemList ?? this.friendlistItemList,
    );
  }

  @override
  List<Object?> get props => [friendlistItemList];
}
