import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final String postId;
  final String text;
  final String authorId;
  final DateTime? date;
  final VoidCallback onTap;

  const PostTile({
    required this.postId,
    required this.text,
    required this.authorId,
    this.date,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final dateStr = date != null ? date!.toLocal().toString().substring(0,16) : '';
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        subtitle: Text('by $authorId • $dateStr'),
        onTap: onTap,
      ),
    );
  }
}