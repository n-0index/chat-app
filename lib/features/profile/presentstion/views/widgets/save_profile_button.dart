import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            backgroundColor: ColorApp.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )
          ),

          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.save,
              color: Colors.white ,
              ),
              Text('  Save Profile',
              style: TextStyle(
                color: Colors.white ,
                fontSize: 17,
              ),)
            ],
          )),
    );
  }
}
