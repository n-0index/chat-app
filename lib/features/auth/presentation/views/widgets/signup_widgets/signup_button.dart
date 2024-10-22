import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../../core/shared_widgets/custom_button.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phoneController,
    required this.onSuccess, });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final VoidCallback onSuccess;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up',
      func: () {
        if (!emailController.text.contains('@')) {
          displayToastMssg('Email address isn\'t valid', context);
        } else if (passwordController.text.isEmpty) {
          displayToastMssg('Password is mandatory', context);
        } else if (nameController.text.isEmpty){
          displayToastMssg('Name can\'t be empty' ,context);
        } else if (phoneController.text.isEmpty){
          displayToastMssg('Phone number is required' ,context);
        } else {
          onSuccess();
        }
      },
    );
  }
}
displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}