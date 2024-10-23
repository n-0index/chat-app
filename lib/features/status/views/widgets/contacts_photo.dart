import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ContactsPhoto extends StatelessWidget {
  const ContactsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: ColorApp.primaryColor,
            width: 2,
          ),
        ),
        child: const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/img.png'),
        ),
      ),
    );
  }
}
