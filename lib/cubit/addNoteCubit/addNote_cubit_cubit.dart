import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addNote_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
}
