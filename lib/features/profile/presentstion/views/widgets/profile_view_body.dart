import 'package:chat_app/features/profile/presentstion/views/widgets/name_list_tile.dart';
import 'package:chat_app/features/profile/presentstion/views/widgets/phone_list_tile.dart';
import 'package:chat_app/features/profile/presentstion/views/widgets/profile_photo.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/colors.dart';
import 'save_profile_button.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75 ,
          shape: null,
          shadowColor: null,
          backgroundColor: ColorApp.kBackgroundColor,
            title: const Text('Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
          ),),

        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_rounded,
        color: ColorApp.primaryColor,),
          ) ,
        ),

        body: const  Center(
          child: Column(
            children: [
              SizedBox(height: 32,),
              ProfilePhoto(),
              SizedBox(height: 32,),
              Divider(),

              Padding(
                padding: EdgeInsets.only(right: 24,top: 24),
                child: ProfileNameListTile(),
              ),

              Padding(
                padding: EdgeInsets.only(right: 24,top: 24),
                child: PhoneListTile(),
              ),

              SizedBox(height: 50,),
              SaveProfileButton(),
            ],
          ),
        ),
      );
  }
}
