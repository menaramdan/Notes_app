
import 'package:flutter/material.dart';
import 'package:notes_app/helper/constant.dart';

class CustomIconaddNote extends StatelessWidget {
  const CustomIconaddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: kprimary,
        ),
        child: Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 18),)),
      ),
    );
  }
}