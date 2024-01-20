import 'package:flutter/material.dart';
import 'package:noteapp/views/note_Items.dart';

class noteListView extends StatelessWidget {
  noteListView({
    super.key,
  });
  List<dynamic> dataColor = [
    Color.fromARGB(255, 92, 87, 44),
    Color.fromARGB(255, 70, 58, 36),
    Color.fromARGB(255, 104, 12, 5),
    Color.fromARGB(255, 92, 87, 44),
    Color.fromARGB(255, 70, 58, 36),
    Color.fromARGB(255, 104, 12, 5)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 6,
        itemBuilder: (context, index) {
          return noteItem(
            color: dataColor[index],
          );
        },
      ),
    );
  }
}
