import 'package:flutter/material.dart';

class PhoneListTile extends StatelessWidget {
  const PhoneListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text('Phone',
        style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.bold,
        ),),
    ),

      subtitle: Material(
        elevation: 30,
        shadowColor: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          decoration: InputDecoration(
            hintText: ' (+20) ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
