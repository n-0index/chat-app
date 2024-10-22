import 'package:chat_app/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key, required this.nameController});

  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return customText(
        type: TextInputType.text,
      label: 'Enter your name',
      hint: 'Name',
      prefix: Icons.person,
      validate: (value) {
        if (value!.isEmpty) {
          return 'Name must not be empty';
        } return null;
      },
    );
  }
}
