// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

@immutable
abstract class ContactUsEvent extends Equatable {}

class ContactUsInitialEvent extends ContactUsEvent {
  @override
  List<Object?> get props => [];
}
