import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,  this.maxlines=1,required  this.hint});
  final int maxlines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextField(
        maxLines: maxlines,
        decoration: InputDecoration(
          hint: Text(hint, style: TextStyle(color: kprimary)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: buildborder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kprimary1),
    );
  }
}
