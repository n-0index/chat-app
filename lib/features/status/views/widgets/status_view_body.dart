import 'package:chat_app/core/shared_widgets/app_bar.dart';
import 'package:chat_app/features/status/views/widgets/add_status_list_tile.dart';
import 'package:flutter/material.dart';
import '../../../../core/shared_widgets/buttom_app_bar.dart';
import 'recent_updates_list_view.dart';
import 'viewed_updates_list_view.dart';

class StatusViewBody extends StatelessWidget {
  const StatusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),

        children: const [
          ChatAppBar(),
          AddStatusListTile(),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text('Recent Updates',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),),
          ),

          RecentUpdatesListView(),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text('Viewed Updates',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),),
          ),

          ViewedUpdatesListView(),
          ButtomAppBar(),
        ],
      ),
    );
  }
}