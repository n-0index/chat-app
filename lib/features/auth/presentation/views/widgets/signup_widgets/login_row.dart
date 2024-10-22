import 'package:chat_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/themes/styles.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginView(),
              ),
            );
          },
          child: Text(
            'Login here',
            style: Styles.textStyle10,
          ),
        ),
      ],
    );
  }
}