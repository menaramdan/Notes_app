
import 'package:flutter/material.dart';

class NotesViewIcon extends StatelessWidget {
  const NotesViewIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: 0.2),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 27,
          color: Colors.white,
          
        ),
      ),
    );
  }
}