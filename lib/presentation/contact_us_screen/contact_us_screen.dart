import 'bloc/contact_us_bloc.dart';
import 'models/contact_us_model.dart';
import 'package:flutter/material.dart';
import 'package:wilt/core/app_export.dart';
import 'package:wilt/core/utils/validation_functions.dart';
import 'package:wilt/widgets/app_bar/appbar_image.dart';
import 'package:wilt/widgets/app_bar/appbar_title.dart';
import 'package:wilt/widgets/app_bar/custom_app_bar.dart';
import 'package:wilt/widgets/custom_button.dart';
import 'package:wilt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ContactUsScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactUsBloc>(
        create: (context) =>
            ContactUsBloc(ContactUsState(contactUsModelObj: ContactUsModel()))
              ..add(ContactUsInitialEvent()),
        child: ContactUsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_contact_us".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 27, right: 16, bottom: 27),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16),
                          BlocSelector<ContactUsBloc, ContactUsState,
                                  TextEditingController?>(
                              selector: (state) => state.group10198Controller,
                              builder: (context, group10198Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198Controller,
                                    hintText: "lbl_enter_your_name".tr,
                                    margin: getMargin(top: 7),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<ContactUsBloc, ContactUsState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198OneController,
                              builder: (context, group10198OneController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198OneController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 8),
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
                              padding: getPadding(top: 18),
                              child: Text("lbl_mobile_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<ContactUsBloc, ContactUsState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198TwoController,
                              builder: (context, group10198TwoController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198TwoController,
                                    hintText: "msg_enter_your_number".tr,
                                    margin: getMargin(top: 8),
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Text("lbl_message".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<ContactUsBloc, ContactUsState,
                                  TextEditingController?>(
                              selector: (state) => state.group10199Controller,
                              builder: (context, group10199Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10199Controller,
                                    hintText: "lbl_message2".tr,
                                    margin: getMargin(top: 6),
                                    padding: TextFormFieldPadding.PaddingT20,
                                    textInputAction: TextInputAction.done,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 30,
                                            right: 7,
                                            bottom: 7),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgEdit)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(128)),
                                    maxLines: 6);
                              }),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_send_message".tr,
                              margin: getMargin(top: 24, bottom: 5),
                              padding: ButtonPadding.PaddingAll14,
                              fontStyle: ButtonFontStyle.GilroyMedium16)
                        ])))));
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
