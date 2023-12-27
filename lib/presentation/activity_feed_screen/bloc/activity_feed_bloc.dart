import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listprofileimglarge_item_model.dart';
import '../models/listvideocamera_item_model.dart';
import 'package:wilt/presentation/activity_feed_screen/models/activity_feed_model.dart';
part 'activity_feed_event.dart';
part 'activity_feed_state.dart';

class ActivityFeedBloc extends Bloc<ActivityFeedEvent, ActivityFeedState> {
  ActivityFeedBloc(ActivityFeedState initialState) : super(initialState) {
    on<ActivityFeedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ActivityFeedInitialEvent event,
    Emitter<ActivityFeedState> emit,
  ) async {
    emit(state.copyWith(
        activityFeedModelObj: state.activityFeedModelObj?.copyWith(
            listprofileimglargeItemList: fillListprofileimglargeItemList(),
            listvideocameraItemList: fillListvideocameraItemList())));
  }

  List<ListprofileimglargeItemModel> fillListprofileimglargeItemList() {
    return List.generate(2, (index) => ListprofileimglargeItemModel());
  }

  List<ListvideocameraItemModel> fillListvideocameraItemList() {
    return List.generate(4, (index) => ListvideocameraItemModel());
  }
}
