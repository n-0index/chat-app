import 'package:chat_app/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.emailController});

  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return customText(
      type:TextInputType.emailAddress ,
      label: 'enter your email',
      hint: 'Email',
      prefix: Icons.email_outlined,
      controller: emailController,
      validate: (value) {
        if (value!.isEmpty) {
          return 'Email must not be empty' ;
        } return null ;
      },
    );
  }
}
