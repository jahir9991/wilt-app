import 'bloc/contact_sharing_bloc.dart';
import 'models/contact_sharing_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/core/utils/validation_functions.dart';
import 'package:wilt/widgets/app_bar/appbar_image.dart';
import 'package:wilt/widgets/app_bar/appbar_title.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';
import 'package:wilt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ContactSharingScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactSharingBloc>(
        create: (context) => ContactSharingBloc(
            ContactSharingState(contactSharingModelObj: ContactSharingModel()))
          ..add(ContactSharingInitialEvent()),
        child: ContactSharingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 11),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_contact_details".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgShare,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 11))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 14, right: 16, bottom: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse5150x150,
                              height: getSize(150),
                              width: getSize(150),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(75)),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("lbl_michelle_rock".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroySemiBold18))),
                          Padding(
                              padding: getPadding(top: 76),
                              child: Text("lbl_mobile_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("lbl_808_555_0111".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCall,
                                    height: getSize(24),
                                    width: getSize(24)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blueGray100)),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          BlocSelector<ContactSharingBloc, ContactSharingState,
                                  TextEditingController?>(
                              selector: (state) => state.emailOneController,
                              builder: (context, emailOneController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailOneController,
                                    hintText: "msg_michellerock_gmail_com".tr,
                                    margin: getMargin(top: 16),
                                    variant: TextFormFieldVariant
                                        .UnderLineBluegray100,
                                    fontStyle: TextFormFieldFontStyle
                                        .GilroyMedium16Bluegray900,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_ringtone".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          BlocSelector<ContactSharingBloc, ContactSharingState,
                                  TextEditingController?>(
                              selector: (state) => state.group3670Controller,
                              builder: (context, group3670Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group3670Controller,
                                    hintText: "msg_default_ringtone".tr,
                                    margin: getMargin(top: 14, bottom: 5),
                                    variant: TextFormFieldVariant
                                        .UnderLineBluegray100,
                                    fontStyle: TextFormFieldFontStyle
                                        .GilroyMedium16Bluegray900,
                                    textInputAction: TextInputAction.done);
                              })
                        ])))));
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
