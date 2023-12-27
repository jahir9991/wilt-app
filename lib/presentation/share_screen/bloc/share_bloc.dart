import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridrectangleten_item_model.dart';
import '../models/gridrectangleseventeen_item_model.dart';
import 'package:wilt/presentation/share_screen/models/share_model.dart';
part 'share_event.dart';
part 'share_state.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  ShareBloc(ShareState initialState) : super(initialState) {
    on<ShareInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ShareState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  List<GridrectangletenItemModel> fillGridrectangletenItemList() {
    return List.generate(6, (index) => GridrectangletenItemModel());
  }

  List<GridrectangleseventeenItemModel> fillGridrectangleseventeenItemList() {
    return List.generate(6, (index) => GridrectangleseventeenItemModel());
  }

  _onInitialize(
    ShareInitialEvent event,
    Emitter<ShareState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false));
    emit(state.copyWith(
        shareModelObj: state.shareModelObj?.copyWith(
            gridrectangletenItemList: fillGridrectangletenItemList(),
            gridrectangleseventeenItemList:
                fillGridrectangleseventeenItemList())));
  }
}
