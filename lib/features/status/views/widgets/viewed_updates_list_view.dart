import 'package:flutter/material.dart';
import 'contacts_photo.dart';

class ViewedUpdatesListView extends StatelessWidget {
  const ViewedUpdatesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},

        child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 4,

            itemBuilder: (BuildContext context ,int index){
              return const ListTile(
                leading: ContactsPhoto(),

                title: Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text('Contact',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                subtitle: Text('Today at 00:00',
                  style: TextStyle(
                      color:Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
              );
            }),
    );
  }
}
