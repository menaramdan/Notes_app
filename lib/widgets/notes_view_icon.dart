import 'package:flutter/material.dart';

class NotesViewIcon extends StatelessWidget {
  const NotesViewIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 240),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: 0.2),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, size: 27, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
