import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/cubit/get_notes_cubit.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/textField.dart';

class edit_items extends StatefulWidget {
   edit_items({super.key, required this.notes });
  final note_Model notes;


  @override
  State<edit_items> createState() => _edit_itemsState();
}

class _edit_itemsState extends State<edit_items> {
     String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Edit Note',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(.1)),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                      widget.notes.title =title ?? widget.notes.title;
                      widget.notes.subtitle = content ?? widget.notes.subtitle;

                    widget.notes.save();
                    Navigator.pop(context);
                     BlocProvider.of<GetNotesCubit>(context).get_all_data();
                  },
                  icon: Icon(
                    Icons.done,
                    size: 40,
                  ),
                )),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        textFieldWidget(hintText: widget.notes.title, maxLine: 1 , onChanged: (data) {
          title = data;
        },),
        textFieldWidget(
          onChanged: (data) {
            content  =data;
          },
          hintText: widget.notes.subtitle,
          maxLine: 5,
        )
      ],
    );
  }
}
