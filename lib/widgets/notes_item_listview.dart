import 'package:flutter/material.dart';
import 'package:notes_app/widgets/news_item.dart';

class NotesItemListview extends StatelessWidget {
  const NotesItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: NewsItem(),
          );
        },
      ),
    );
  }
}
