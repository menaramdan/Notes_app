
import 'package:flutter/material.dart';

class CustomIconaddNote extends StatelessWidget {
  const CustomIconaddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.blueAccent,
        ),
        child: Center(child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 15),)),
      ),
    );
  }
}