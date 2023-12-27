import '../scoring_screen/widgets/listglobe1_item_widget.dart';
import '../scoring_screen/widgets/listglobe2_item_widget.dart';
import '../scoring_screen/widgets/listglobe_item_widget.dart';
import 'bloc/scoring_bloc.dart';
import 'models/listglobe1_item_model.dart';
import 'models/listglobe2_item_model.dart';
import 'models/listglobe_item_model.dart';
import 'models/scoring_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';
import 'package:wilt/widgets/custom_bottom_bar.dart';
import 'package:wilt/widgets/custom_button.dart';
import 'package:wilt/widgets/custom_icon_button.dart';
import 'package:wilt/widgets/custom_search_view.dart';

class ScoringScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ScoringBloc>(
      create: (context) => ScoringBloc(ScoringState(
        scoringModelObj: ScoringModel(),
      ))
        ..add(ScoringInitialEvent()),
      child: ScoringScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Row(
              children: [
                Container(
                  height: getSize(
                    8,
                  ),
                  width: getSize(
                    8,
                  ),
                  margin: getMargin(
                    top: 7,
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.deepOrangeA400,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                  ),
                  child: Text(
                    "lbl_live".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPilatExtendedHeavy18,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 18,
                  ),
                  child: Text(
                    "lbl_line".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPilatExtendedHeavy18Black90087,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CustomIconButton(
              height: 32,
              width: 32,
              margin: getMargin(
                left: 16,
                top: 9,
                right: 16,
                bottom: 9,
              ),
              padding: IconButtonPadding.PaddingAll7,
              child: CustomImageView(
                svgPath: ImageConstant.imgSettings,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            top: 22,
            right: 15,
            bottom: 22,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<ScoringBloc, ScoringState, TextEditingController?>(
                selector: (state) => state.inputFieldController,
                builder: (context, inputFieldController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: inputFieldController,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
                      top: 2,
                    ),
                    prefix: Container(
                      margin: getMargin(
                        left: 12,
                        top: 12,
                        right: 8,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        44,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 12,
                        right: 12,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgMicrophone,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        44,
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 20,
                  right: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        40,
                      ),
                      width: getHorizontalSize(
                        95,
                      ),
                      text: "lbl_football".tr,
                      padding: ButtonPadding.PaddingT12,
                      fontStyle: ButtonFontStyle.SFUIDisplayBold12,
                      prefixWidget: Container(
                        margin: getMargin(
                          right: 8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearchWhiteA700,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLightbulb,
                      ),
                    ),
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgMap,
                      ),
                    ),
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEye,
                      ),
                    ),
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                      ),
                    ),
                    CustomIconButton(
                      height: 40,
                      width: 40,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSportscricket,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 20,
                    right: 1,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.outlineGray300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_premier_league".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium12,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: BlocSelector<ScoringBloc, ScoringState,
                                      ScoringModel?>(
                                    selector: (state) => state.scoringModelObj,
                                    builder: (context, scoringModelObj) {
                                      return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              8,
                                            ),
                                          );
                                        },
                                        itemCount: scoringModelObj
                                                ?.listglobeItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          ListglobeItemModel model =
                                              scoringModelObj
                                                          ?.listglobeItemList[
                                                      index] ??
                                                  ListglobeItemModel();
                                          return ListglobeItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgPlay,
                                        height: getSize(
                                          16,
                                        ),
                                        width: getSize(
                                          16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_49_30".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSFUIDisplayRegular10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: getMargin(
                                top: 23,
                                bottom: 24,
                              ),
                              padding: getPadding(
                                left: 7,
                                top: 11,
                                right: 7,
                                bottom: 11,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack90033.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignalGray500,
                                    height: getVerticalSize(
                                      11,
                                    ),
                                    width: getHorizontalSize(
                                      10,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_790".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtLatoBold10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_8".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_2_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 20,
                    right: 1,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.outlineGray300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_premier_league".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium12,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: BlocSelector<ScoringBloc, ScoringState,
                                      ScoringModel?>(
                                    selector: (state) => state.scoringModelObj,
                                    builder: (context, scoringModelObj) {
                                      return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              8,
                                            ),
                                          );
                                        },
                                        itemCount: scoringModelObj
                                                ?.listglobe1ItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listglobe1ItemModel model =
                                              scoringModelObj
                                                          ?.listglobe1ItemList[
                                                      index] ??
                                                  Listglobe1ItemModel();
                                          return Listglobe1ItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgPlay,
                                        height: getSize(
                                          16,
                                        ),
                                        width: getSize(
                                          16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_49_30".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSFUIDisplayRegular10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: getMargin(
                                top: 23,
                                bottom: 24,
                              ),
                              padding: getPadding(
                                left: 7,
                                top: 11,
                                right: 7,
                                bottom: 11,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack90033.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignalGray500,
                                    height: getVerticalSize(
                                      11,
                                    ),
                                    width: getHorizontalSize(
                                      10,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_790".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtLatoBold10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_8".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_2_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 20,
                    right: 1,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.outlineGray300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_premier_league".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium12,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: BlocSelector<ScoringBloc, ScoringState,
                                      ScoringModel?>(
                                    selector: (state) => state.scoringModelObj,
                                    builder: (context, scoringModelObj) {
                                      return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              8,
                                            ),
                                          );
                                        },
                                        itemCount: scoringModelObj
                                                ?.listglobe2ItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listglobe2ItemModel model =
                                              scoringModelObj
                                                          ?.listglobe2ItemList[
                                                      index] ??
                                                  Listglobe2ItemModel();
                                          return Listglobe2ItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgPlay,
                                        height: getSize(
                                          16,
                                        ),
                                        width: getSize(
                                          16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 1,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_49_30".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSFUIDisplayRegular10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: getMargin(
                                top: 23,
                                bottom: 24,
                              ),
                              padding: getPadding(
                                left: 7,
                                top: 11,
                                right: 7,
                                bottom: 11,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack90033.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignalGray500,
                                    height: getVerticalSize(
                                      11,
                                    ),
                                    width: getHorizontalSize(
                                      10,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_790".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtLatoBold10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          right: 9,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_8".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_2_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                83,
                              ),
                              margin: getMargin(
                                left: 8,
                              ),
                              padding: getPadding(
                                left: 30,
                                top: 8,
                                right: 32,
                                bottom: 8,
                              ),
                              decoration:
                                  AppDecoration.txtOutlineBlack9000c.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder6,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoBold12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
