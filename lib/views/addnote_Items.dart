import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/addNoteCubit/addNote_cubit_cubit.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/addButton.dart';
import 'package:noteapp/views/textField.dart';

class addNoteForm extends StatefulWidget {
  addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          textFieldWidget(
              onSaved: (data) {
                title = data;
              },
              hintText: 'title',
              maxLine: 1),
          textFieldWidget(
            onSaved: (data) {
              subtitle = data;
            },
            hintText: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 30,
          ),
          add_Button_Widget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var Note_Model = note_Model(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString());
                BlocProvider.of<addNotesCubit>(context).addNote(Note_Model);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
