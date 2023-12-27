// ignore_for_file: must_be_immutable

part of 'image_management_bloc.dart';

class ImageManagementState extends Equatable {
  ImageManagementState({this.imageManagementModelObj});

  ImageManagementModel? imageManagementModelObj;

  @override
  List<Object?> get props => [
        imageManagementModelObj,
      ];
  ImageManagementState copyWith(
      {ImageManagementModel? imageManagementModelObj}) {
    return ImageManagementState(
      imageManagementModelObj:
          imageManagementModelObj ?? this.imageManagementModelObj,
    );
  }
}
