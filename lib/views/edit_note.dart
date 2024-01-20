import 'package:flutter/material.dart';
import 'package:noteapp/views/edit_CustomAppbar.dart';
import 'package:noteapp/views/textField.dart';


class edit_Note extends StatelessWidget {
  const edit_Note({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(

        children: [
          SizedBox(height: 50,),
          edit_CustomAppbar(),
          SizedBox(height: 50,),
          textFieldWidget(hintText: 'Title' , maxLine: 1),
          textFieldWidget(hintText: 'Content', maxLine: 5,)
          ],
      ),
    );
  }
}
