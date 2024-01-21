import 'package:flutter/material.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/edit_items.dart';
import 'package:noteapp/views/textField.dart';

class edit_Note extends StatelessWidget {
  const edit_Note({super.key , required this.notes});
final note_Model notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: edit_items(notes: notes),
    );
  }
}
