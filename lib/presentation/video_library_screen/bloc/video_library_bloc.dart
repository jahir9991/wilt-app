import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/videolibrary_item_model.dart';
import 'package:wilt/presentation/video_library_screen/models/video_library_model.dart';
part 'video_library_event.dart';
part 'video_library_state.dart';

class VideoLibraryBloc extends Bloc<VideoLibraryEvent, VideoLibraryState> {
  VideoLibraryBloc(VideoLibraryState initialState) : super(initialState) {
    on<VideoLibraryInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    VideoLibraryInitialEvent event,
    Emitter<VideoLibraryState> emit,
  ) async {
    emit(state.copyWith(
        videoLibraryModelObj: state.videoLibraryModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            videolibraryItemList: fillVideolibraryItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<VideoLibraryState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<VideolibraryItemModel> fillVideolibraryItemList() {
    return List.generate(8, (index) => VideolibraryItemModel());
  }
}
