import 'package:flutter/material.dart';
import 'package:noteapp/model/note_Model.dart';
import 'package:noteapp/views/top_widget.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key ,});

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
                  'Note App',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(.1)),
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(
                    Icons.search,
                    size: 40,
                  ),
                )),
              ),
            )
          ],
        )
      ],
    );
  }
}
