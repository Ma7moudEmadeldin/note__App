import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/noteViewHome.dart';

part 'edit_note_cubit_state.dart';

class EditNoteCubitCubit extends Cubit<EditNoteCubitState> {
  EditNoteCubitCubit() : super(EditNoteCubitInitial());

  editNote() async {
    emit(EditNoteCubLoading());
    try {
      var notesBox = Hive.box<note_Model>(kNotesBox);
    List<note_Model> noteBox =   notesBox.values.toList();

      emit(EditNoteCubSuccefull(noteBox));
    } catch (e) {
      emit(EditNoteCubFailure('error Loading'));
    }
  }
}
