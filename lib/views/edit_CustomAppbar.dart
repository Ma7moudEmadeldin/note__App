import 'package:flutter/material.dart';
import 'package:noteapp/views/top_widget.dart';

class edit_CustomAppbar extends StatelessWidget {
  const edit_CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          topWidget(iconn: Icons.done, size: 40, border: 8, text: 'Edit Note'),
    );
  }
}
