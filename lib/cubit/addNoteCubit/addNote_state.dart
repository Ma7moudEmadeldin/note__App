part of 'addNotecubit.dart';

@immutable
sealed class NoteCubitState {}
final class NoteCubitInitial extends NoteCubitState {}
final class addNoteSuccess extends NoteCubitState {}

final class addNoteFailre extends NoteCubitState {
  final String errMessage;

  addNoteFailre({required this.errMessage});
}

final class addNoteLoading extends NoteCubitState {}
