import 'package:equatable/equatable.dart';
import 'addfriends_item_model.dart';

// ignore: must_be_immutable
class AddFriendsModel extends Equatable {
  AddFriendsModel({this.addfriendsItemList = const []});

  List<AddfriendsItemModel> addfriendsItemList;

  AddFriendsModel copyWith({List<AddfriendsItemModel>? addfriendsItemList}) {
    return AddFriendsModel(
      addfriendsItemList: addfriendsItemList ?? this.addfriendsItemList,
    );
  }

  @override
  List<Object?> get props => [addfriendsItemList];
}
