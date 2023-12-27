import '../activity_feed_screen/widgets/listprofileimglarge_item_widget.dart';
import '../activity_feed_screen/widgets/listvideocamera_item_widget.dart';
import 'bloc/activity_feed_bloc.dart';
import 'models/activity_feed_model.dart';
import 'models/listprofileimglarge_item_model.dart';
import 'models/listvideocamera_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/widgets/app_bar/appbar_image.dart';
import 'package:wilt/widgets/app_bar/appbar_title.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';

class ActivityFeedScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ActivityFeedBloc>(
        create: (context) => ActivityFeedBloc(
            ActivityFeedState(activityFeedModelObj: ActivityFeedModel()))
          ..add(ActivityFeedInitialEvent()),
        child: ActivityFeedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_activity_feed".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroySemiBold18),
                      Padding(
                          padding: getPadding(top: 17),
                          child: BlocSelector<ActivityFeedBloc,
                                  ActivityFeedState, ActivityFeedModel?>(
                              selector: (state) => state.activityFeedModelObj,
                              builder: (context, activityFeedModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: activityFeedModelObj
                                            ?.listprofileimglargeItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListprofileimglargeItemModel model =
                                          activityFeedModelObj
                                                      ?.listprofileimglargeItemList[
                                                  index] ??
                                              ListprofileimglargeItemModel();
                                      return ListprofileimglargeItemWidget(
                                          model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_this_month".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: BlocSelector<ActivityFeedBloc,
                                  ActivityFeedState, ActivityFeedModel?>(
                              selector: (state) => state.activityFeedModelObj,
                              builder: (context, activityFeedModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: activityFeedModelObj
                                            ?.listvideocameraItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListvideocameraItemModel model =
                                          activityFeedModelObj
                                                      ?.listvideocameraItemList[
                                                  index] ??
                                              ListvideocameraItemModel();
                                      return ListvideocameraItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
