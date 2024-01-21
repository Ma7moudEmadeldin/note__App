import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/cubit/get_notes_cubit.dart';
import 'package:noteapp/views/addNote_View.dart';
import 'package:noteapp/views/notesBody.dart';

class notes_View extends StatefulWidget {
  const notes_View({super.key});

  @override
  State<notes_View> createState() => _notes_ViewState();
}

class _notes_ViewState extends State<notes_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: noteBody());
  }
}
