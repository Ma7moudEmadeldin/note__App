
import 'package:flutter/material.dart';

class textFieldWidget extends StatelessWidget {
   textFieldWidget({super.key , required this.hintText ,  this.maxLine = 1 , this.onSaved});
String hintText;
int maxLine ;
 void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16 , left: 16 , right: 16 , bottom: 8),
            child: TextFormField(
              onSaved: onSaved,
              validator: (value) {
                if(value?.isEmpty ?? true){
                  return 'field is empty';
                }else{
                  return null;
                }
              },
              maxLines: maxLine,
              decoration: InputDecoration(
                hintText: hintText,
                
                hintStyle: TextStyle(color: Colors.white.withOpacity(.3) ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white ,) , borderRadius: BorderRadius.circular(16))
              ),
              
            ),
          )
        ],
      ),
    );
  }
}
