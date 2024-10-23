import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class AddStatusIcon extends StatelessWidget {
  const AddStatusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
      const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/img.png'),
    ),
     Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: ColorApp.primaryColor,
              width: 1.5,
            ),
          ),

          child: const Center(
            child: Icon(
              Icons.add,
              color: ColorApp.primaryColor,
              size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
