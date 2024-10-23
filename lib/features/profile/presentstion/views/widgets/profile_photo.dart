import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/img.png'),
        ),

        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: (){},

            child: Container(
              width: 30,
              height: 30,

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color:  ColorApp.primaryColor ,
              ),

              child: const Center(
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}