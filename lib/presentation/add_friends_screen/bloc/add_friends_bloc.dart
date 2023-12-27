import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/addfriends_item_model.dart';
import 'package:wilt/presentation/add_friends_screen/models/add_friends_model.dart';
part 'add_friends_event.dart';
part 'add_friends_state.dart';

class AddFriendsBloc extends Bloc<AddFriendsEvent, AddFriendsState> {
  AddFriendsBloc(AddFriendsState initialState) : super(initialState) {
    on<AddFriendsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddFriendsInitialEvent event,
    Emitter<AddFriendsState> emit,
  ) async {
    emit(state.copyWith(
        addFriendsModelObj: state.addFriendsModelObj
            ?.copyWith(addfriendsItemList: fillAddfriendsItemList())));
  }

  List<AddfriendsItemModel> fillAddfriendsItemList() {
    return List.generate(6, (index) => AddfriendsItemModel());
  }
}
