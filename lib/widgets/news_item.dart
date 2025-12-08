import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.yellow.withValues(alpha: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Byild your career with tharwate samy',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black.withValues(alpha: 0.2),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'may 10-4-2025',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withValues(alpha: 0.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
