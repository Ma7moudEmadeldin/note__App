import 'package:flutter/material.dart';
import 'package:noteapp/edit_note.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key, required this.color});
  final dynamic color;
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
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Flutter Tips',
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text(
                    'Build Your Career With Mahmoud Emad',
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
                      'May,21,2023',
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
