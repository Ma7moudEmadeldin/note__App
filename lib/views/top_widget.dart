import 'package:flutter/material.dart';

class topWidget extends StatelessWidget {
  const topWidget({super.key , required this.iconn , required this.size , required this.border , required this.text});
final IconData iconn;
final double size;
final double border;
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(text , style: TextStyle(fontSize: 22 , ),)),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border), color: Colors.white.withOpacity(.1)
            ),
            child: Center(child: Icon(iconn , size: size,)),
          ),
        )
      ],
    );
  }
}
