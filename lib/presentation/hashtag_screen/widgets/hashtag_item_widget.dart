import '../models/hashtag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';

// ignore: must_be_immutable
class HashtagItemWidget extends StatelessWidget {
  HashtagItemWidget(this.hashtagItemModelObj);

  HashtagItemModel hashtagItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle10130x1304,
      height: getSize(
        130,
      ),
      width: getSize(
        130,
      ),
    );
  }
}
