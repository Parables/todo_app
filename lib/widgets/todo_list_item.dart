import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 16,
              color: Color(0xFFEE30F4),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 12),
                  maxLines: 2,
                )
              ],
            ),
            const Spacer(),
            Row(
              children: const [
                Icon(
                  Icons.notifications,
                  color: Color(0xFFEE30F4),
                  size: 16,
                ),
                Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 12, color: Color(0xFFEE30F4)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
