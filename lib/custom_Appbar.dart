import 'package:flutter/material.dart';
import 'package:noteapp/top_widget.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        topWidget(iconn: Icons.search, size: 40,  border: 16, text: 'Note App',)
      ],
    );
  }
}
