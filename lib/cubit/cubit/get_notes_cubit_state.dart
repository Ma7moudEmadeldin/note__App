part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesCubitState {}

final class GetNotesCubitInitial extends GetNotesCubitState {}

final class GetNotesSuccefull extends GetNotesCubitState {
  GetNotesSuccefull(this.notes);
  List<note_Model> notes;

 
}
