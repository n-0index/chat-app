import 'package:chat_app/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key,
    required this.passwordController,
    required this.toggleVisibility,
    required this.isPasswordVisible});

  final TextEditingController passwordController ;
  final VoidCallback toggleVisibility ;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return customText(
        type: TextInputType.visiblePassword,
        label: 'Enter your Password',
        hint: 'Password',
        controller: passwordController,
        prefix: Icons.lock,
        isObscure: !isPasswordVisible,
        suffix: isPasswordVisible
            ? Icons.visibility
            : Icons.visibility_off,
        pressed: toggleVisibility,
        validate: (value) {
          if (value!.isEmpty) {
            return 'Password is too short';
          } return null;
      },
    );
  }
}