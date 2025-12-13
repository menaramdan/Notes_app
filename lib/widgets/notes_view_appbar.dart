import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_icon.dart';

class NotesViewAppbar extends StatelessWidget {
  const NotesViewAppbar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child:  Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          NotesViewIcon(
            onPressed: onPressed,
            icon: icon
            ),
          
        ],
      ),
    );
  }
}
