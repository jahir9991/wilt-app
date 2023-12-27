import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridrectangle_item_model.dart';
import 'package:wilt/presentation/image_management_screen/models/image_management_model.dart';
part 'image_management_event.dart';
part 'image_management_state.dart';

class ImageManagementBloc
    extends Bloc<ImageManagementEvent, ImageManagementState> {
  ImageManagementBloc(ImageManagementState initialState) : super(initialState) {
    on<ImageManagementInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ImageManagementInitialEvent event,
    Emitter<ImageManagementState> emit,
  ) async {
    emit(state.copyWith(
        imageManagementModelObj: state.imageManagementModelObj
            ?.copyWith(gridrectangleItemList: fillGridrectangleItemList())));
  }

  List<GridrectangleItemModel> fillGridrectangleItemList() {
    return List.generate(15, (index) => GridrectangleItemModel());
  }
}
