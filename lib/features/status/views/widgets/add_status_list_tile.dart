import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';
import 'add_status_icon.dart';


class AddStatusListTile extends StatelessWidget {
  const AddStatusListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: ColorApp.primaryColor,

      child: const ListTile(
        leading: AddStatusIcon(),

        title: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text('My Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
           ),
          ),
        ),

        subtitle: Text('Tap to add status update',
        style: TextStyle(
            color:Colors.grey,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
