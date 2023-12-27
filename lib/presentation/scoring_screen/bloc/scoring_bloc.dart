import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listglobe_item_model.dart';
import '../models/listglobe1_item_model.dart';
import '../models/listglobe2_item_model.dart';
import 'package:wilt/widgets/custom_bottom_bar.dart';
import 'package:wilt/presentation/scoring_screen/models/scoring_model.dart';
part 'scoring_event.dart';
part 'scoring_state.dart';

class ScoringBloc extends Bloc<ScoringEvent, ScoringState> {
  ScoringBloc(ScoringState initialState) : super(initialState) {
    on<ScoringInitialEvent>(_onInitialize);
  }

  List<ListglobeItemModel> fillListglobeItemList() {
    return List.generate(2, (index) => ListglobeItemModel());
  }

  List<Listglobe1ItemModel> fillListglobe1ItemList() {
    return List.generate(2, (index) => Listglobe1ItemModel());
  }

  List<Listglobe2ItemModel> fillListglobe2ItemList() {
    return List.generate(2, (index) => Listglobe2ItemModel());
  }

  _onInitialize(
    ScoringInitialEvent event,
    Emitter<ScoringState> emit,
  ) async {
    emit(state.copyWith(
      inputFieldController: TextEditingController(),
    ));
    emit(state.copyWith(
        scoringModelObj: state.scoringModelObj?.copyWith(
      listglobeItemList: fillListglobeItemList(),
      listglobe1ItemList: fillListglobe1ItemList(),
      listglobe2ItemList: fillListglobe2ItemList(),
    )));
  }
}
