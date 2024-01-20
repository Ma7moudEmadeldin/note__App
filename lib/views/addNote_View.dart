import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubit/addNoteCubit/addNote_cubit_cubit.dart';
import 'package:noteapp/views/addnote_Items.dart';

class addNote_Widget extends StatelessWidget {
  const addNote_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => addNotesCubit(),
      child: BlocConsumer<addNotesCubit, addnotesState>(
        listener: (context, state) {
          if (state is addNoteFailre) {
            print('fail to create note! ${state.errMessage}');
          }
          if (state is addNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is addNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: addNoteForm())));
        },
      ),
    );
  }
}
