import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/friendlist_item_model.dart';
import 'package:wilt/presentation/friend_list_screen/models/friend_list_model.dart';
part 'friend_list_event.dart';
part 'friend_list_state.dart';

class FriendListBloc extends Bloc<FriendListEvent, FriendListState> {
  FriendListBloc(FriendListState initialState) : super(initialState) {
    on<FriendListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FriendListInitialEvent event,
    Emitter<FriendListState> emit,
  ) async {
    emit(state.copyWith(
        friendListModelObj: state.friendListModelObj
            ?.copyWith(friendlistItemList: fillFriendlistItemList())));
  }

  List<FriendlistItemModel> fillFriendlistItemList() {
    return List.generate(10, (index) => FriendlistItemModel());
  }
}
