// ignore_for_file: must_be_immutable

part of 'image_management_bloc.dart';

@immutable
abstract class ImageManagementEvent extends Equatable {}

class ImageManagementInitialEvent extends ImageManagementEvent {
  @override
  List<Object?> get props => [];
}
