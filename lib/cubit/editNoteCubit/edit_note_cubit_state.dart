part of 'edit_note_cubit_cubit.dart';

@immutable
sealed class EditNoteCubitState {}

final class EditNoteCubitInitial extends EditNoteCubitState {}

final class EditNoteCubSuccefull extends EditNoteCubitState {
  final List<note_Model> model;

  EditNoteCubSuccefull(this.model);
}

final class EditNoteCubFailure extends EditNoteCubitState {

  final String errMessage;

  EditNoteCubFailure(this.errMessage);
}

final class EditNoteCubLoading extends EditNoteCubitState {}
