import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/note_Model.dart';

part 'get_notes_cubit_state.dart';

class GetNotesCubit extends Cubit<GetNotesCubitState> {
  GetNotesCubit() : super(GetNotesCubitInitial());

  List <note_Model>? notes;
  get_all_data() {
    var notesBox = Hive.box<note_Model>(kNotesBox);
  notes = notesBox.values.toList();
    emit(GetNotesSuccefull(notes!));
  }
}
