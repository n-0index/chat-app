import 'package:flutter/material.dart';
import '../themes/colors.dart';

class ButtomAppBar extends StatelessWidget {
  const ButtomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: ColorApp.kBackgroundColor,
          selectedItemColor: ColorApp.primaryColor,
          unselectedItemColor: ColorApp.primaryColor.withOpacity(.60),
        onTap: (value){},
        items: [
          const BottomNavigationBarItem(
              label: 'Chats',
              icon: Icon(Icons.chat,),),

          BottomNavigationBarItem(
            label: 'Status',
            icon: Transform.flip(
              flipY: true,
              child: const Icon(Icons.wb_incandescent_rounded,),
            ),),

          const BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(Icons.phone,),),
        ],
    );
  }
}
