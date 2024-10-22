import 'package:chat_app/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key, required this.phoneController});

  final TextEditingController phoneController ;

  @override
  Widget build(BuildContext context) {
    return customText(
        type: TextInputType.phone,
      controller: phoneController,
      label: 'Enter your phone number',
      hint: '(+20 ) Number ',
      prefix: Icons.phone_android_outlined,
      validate: (value) {
        if (value!.isEmpty) {
          return 'phone must not be empty';
        }
        return null;
      },
    );
  }
}
