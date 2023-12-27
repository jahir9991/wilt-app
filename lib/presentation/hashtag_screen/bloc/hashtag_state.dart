// ignore_for_file: must_be_immutable

part of 'hashtag_bloc.dart';

class HashtagState extends Equatable {
  HashtagState({this.hashtagModelObj});

  HashtagModel? hashtagModelObj;

  @override
  List<Object?> get props => [
        hashtagModelObj,
      ];
  HashtagState copyWith({HashtagModel? hashtagModelObj}) {
    return HashtagState(
      hashtagModelObj: hashtagModelObj ?? this.hashtagModelObj,
    );
  }
}
