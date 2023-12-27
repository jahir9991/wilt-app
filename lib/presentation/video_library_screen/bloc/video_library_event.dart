// ignore_for_file: must_be_immutable

part of 'video_library_bloc.dart';

@immutable
abstract class VideoLibraryEvent extends Equatable {}

class VideoLibraryInitialEvent extends VideoLibraryEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends VideoLibraryEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
