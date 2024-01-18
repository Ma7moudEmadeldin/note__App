
import 'package:flutter/material.dart';

class add_Button_Widget extends StatelessWidget {
  const add_Button_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            border: Border.all(color: Colors.white)),
        child: Center(
            child: Text(
          'ADD',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
