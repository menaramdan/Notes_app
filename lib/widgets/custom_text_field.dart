import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxlines = 1,
    required this.hint,
      this.onSaved, this.onChange,
  });
  final int maxlines;
  final String hint;
  final void Function(String?)? onSaved;
   final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'field is required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        onChanged:onChange ,
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
