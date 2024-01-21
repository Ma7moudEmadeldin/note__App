import 'package:flutter/material.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/edit_note.dart';

class noteItem extends StatelessWidget {
   noteItem({super.key, required this.notes });

  final note_Model notes;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return edit_Note();
            },
          ),
        );
      },
      child: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 59, 55, 41),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                  notes.title,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text(
                   notes.subtitle,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.3), fontSize: 12),
                  ),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Icon(
                        Icons.delete,
                        size: 30,
                      )),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Text(
                     notes.date,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
