import 'package:flutter/material.dart';

class add_Button_Widget extends StatelessWidget {
  add_Button_Widget({super.key, required this.onTap, this.isLoading = false});
  void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber,
              border: Border.all(color: Colors.white)),
          child: Center(
              child: isLoading
                  ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator( color: Colors.black, )) 
                  : const Text(
                      'ADD',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
        ),
      ),
    );
  }
}
