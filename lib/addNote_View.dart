import 'package:flutter/material.dart';
import 'package:noteapp/addButton.dart';
import 'package:noteapp/textField.dart';

class addNote_Widget extends StatelessWidget {
  const addNote_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: addNoteForm(),
    );
  }
}

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
            hintText: 'title', maxLine: 1),
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
          add_Button_Widget(onTap: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode =AutovalidateMode.always;
              setState(() {
                
              });
            }
          },),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
