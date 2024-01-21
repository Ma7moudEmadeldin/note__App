
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/get_Notes_Cubit/get_notes_cubit.dart';
import 'package:noteapp/views/custom_Appbar.dart';
import 'package:noteapp/views/note_List_View.dart';

class noteBody extends StatefulWidget {
  const noteBody({
    super.key,
  });

  @override
  State<noteBody> createState() => _noteBodyState();
}

class _noteBodyState extends State<noteBody> {
  @override
  void initState() {
    BlocProvider.of<GetNotesCubit>(context).get_all_data();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(),
        Expanded(child: noteListView()),
      ],
    );
  }
}
