import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/model/note_Model.dart';

part 'addNote_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());


  addNote (note_Model model) {
    
  }
}
