import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/note_Model.dart';

part 'addNote_cubit_state.dart';

class addNotesCubit extends Cubit<NoteCubitState> {
  addNotesCubit() : super(NoteCubitInitial());

  addNote(note_Model model) async {
    emit(addNoteLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      await notesBox.add(model);
      emit(addNoteSuccess());
    } catch (e) {
      emit(addNoteFailre(errMessage: 'error while adding note!'));
    }
  }
}
