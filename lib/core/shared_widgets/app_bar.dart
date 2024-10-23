import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
        backgroundColor: ColorApp.kBackgroundColor,
        title: const Text('WhatsUp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
        ),),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.search ,
                color: Colors.black,),),

          IconButton(onPressed: (){},
              icon: const Icon(Icons.more_vert ,
                color: Colors.black,),)
        ],
    );
  }
}
