import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/editNoteCubit/edit_note_cubit_cubit.dart';
import 'package:noteapp/views/addNote_View.dart';
import 'package:noteapp/views/custom_Appbar.dart';
import 'package:noteapp/views/note_List_View.dart';

class notes_View extends StatelessWidget {
  const notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditNoteCubitCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return addNote_Widget();
                },
              );
            },
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              customAppBar(),
              Expanded(child: noteListView()),
            ],
          )),
    );
  }
}
