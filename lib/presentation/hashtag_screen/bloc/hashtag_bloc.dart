import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/hashtag_item_model.dart';
import 'package:wilt/presentation/hashtag_screen/models/hashtag_model.dart';
part 'hashtag_event.dart';
part 'hashtag_state.dart';

class HashtagBloc extends Bloc<HashtagEvent, HashtagState> {
  HashtagBloc(HashtagState initialState) : super(initialState) {
    on<HashtagInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HashtagInitialEvent event,
    Emitter<HashtagState> emit,
  ) async {
    emit(state.copyWith(
        hashtagModelObj: state.hashtagModelObj
            ?.copyWith(hashtagItemList: fillHashtagItemList())));
  }

  List<HashtagItemModel> fillHashtagItemList() {
    return List.generate(15, (index) => HashtagItemModel());
  }
}
