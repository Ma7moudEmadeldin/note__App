import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubit/addNoteCubit/addNote_cubit_cubit.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/noteViewHome.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(noteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => addNotesCubit())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          home: notes_View()),
    );
  }
}
