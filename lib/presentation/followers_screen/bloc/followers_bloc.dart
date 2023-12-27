import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/followers_item_model.dart';
import 'package:wilt/presentation/followers_screen/models/followers_model.dart';
part 'followers_event.dart';
part 'followers_state.dart';

class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  FollowersBloc(FollowersState initialState) : super(initialState) {
    on<FollowersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FollowersInitialEvent event,
    Emitter<FollowersState> emit,
  ) async {
    emit(state.copyWith(
        followersModelObj: state.followersModelObj
            ?.copyWith(followersItemList: fillFollowersItemList())));
  }

  List<FollowersItemModel> fillFollowersItemList() {
    return List.generate(11, (index) => FollowersItemModel());
  }
}
