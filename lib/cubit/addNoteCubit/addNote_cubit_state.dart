part of 'addNote_cubit_cubit.dart';

@immutable
sealed class addnotesState {}
final class NoteCubitInitial extends addnotesState {}
final class addNoteSuccess extends addnotesState {}

final class addNoteFailre extends addnotesState {
  final String errMessage;

  addNoteFailre({required this.errMessage});
}

final class addNoteLoading extends addnotesState {}
