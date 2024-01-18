import 'package:flutter/material.dart';
import 'package:noteapp/addButton.dart';
import 'package:noteapp/textField.dart';

class addNote_Widget extends StatelessWidget {
  const addNote_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          textFieldWidget(hintText: 'title', maxLine: 1),
          textFieldWidget(
            hintText: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 30,
          ),
          add_Button_Widget(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
