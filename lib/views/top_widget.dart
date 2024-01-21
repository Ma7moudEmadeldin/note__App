import 'package:flutter/material.dart';

class topWidget extends StatelessWidget {
  const topWidget({super.key });




  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('Note App' , style: TextStyle(fontSize: 22 , ),)),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white.withOpacity(.1)
            ),
            child: Center(child: Icon(Icons.search , size: 40,)),
          ),
        )
      ],
    );
  }
}
