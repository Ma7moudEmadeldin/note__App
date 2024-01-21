import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubit/addNoteCubit/addNotecubit.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/addButton.dart';
import 'package:noteapp/views/colors_ListView.dart';
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

  String? title, subtitle, date;
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
          colorListView(),
          BlocBuilder<addNotesCubit, NoteCubitState>(
            builder: (context, state) {
              return add_Button_Widget(
                isLoading: state is addNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formateDate = DateFormat.Hm().format(currentDate);
                    var Note_Model = note_Model(
                        title: title!, subtitle: subtitle!, date: formateDate);
                    BlocProvider.of<addNotesCubit>(context).addNote(Note_Model);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
