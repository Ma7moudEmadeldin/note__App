import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/get_Notes_Cubit/get_notes_cubit.dart';

import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/note_Items.dart';

class noteListView extends StatelessWidget {
  const noteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesCubitState>(
      builder: (context, state) {
        List<note_Model> notes = BlocProvider.of<GetNotesCubit>(context).notes!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state is GetNotesSuccefull ? state.notes.length : 0  ,
            itemBuilder: (context, index) {
              return noteItem(notes: notes[index],);
            },
          ),
        );
      },
    );
  }
}
