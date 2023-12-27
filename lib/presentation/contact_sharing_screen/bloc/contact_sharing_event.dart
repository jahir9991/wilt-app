// ignore_for_file: must_be_immutable

part of 'contact_sharing_bloc.dart';

@immutable
abstract class ContactSharingEvent extends Equatable {}

class ContactSharingInitialEvent extends ContactSharingEvent {
  @override
  List<Object?> get props => [];
}
