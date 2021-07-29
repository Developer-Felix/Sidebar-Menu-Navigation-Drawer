
import 'package:flutter/material.dart';
import 'package:side_navigation/pages/favorites.dart';
import 'package:side_navigation/pages/notifications.dart';
import 'package:side_navigation/pages/people.dart';
import 'package:side_navigation/pages/plugins.dart';
import 'package:side_navigation/pages/updates.dart';
import 'package:side_navigation/pages/userpage.dart';
import 'package:side_navigation/pages/workflow.dart';

class NavigationDrawerWidget extends StatelessWidget {
  

  const NavigationDrawerWidget({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    final name = "felix";
    final email = "onjombafelix1@gmail.com";
    final imageurl = "images/avatar";
    return Drawer(
      child: Material(
        color: Colors.amber,
        child: ListView(
          padding: padding,
          children: [
            builderHeader(
              name : name,
              email :email,
              imageurl :imageurl,
              onClicked : () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UserPage(name : name,imageurl:imageurl))),
            ),
            const SizedBox(height: 48,),
            buildMenuItem(
              text : "People",
              icon : Icons.people,
              onClicked: () => selectedItem(context,0),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: "Workflow", 
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context,1),
              ),

            const SizedBox(height: 16,),
            buildMenuItem(
              text : "Favorite",
              icon : Icons.favorite_border,
              onClicked: () => selectedItem(context,2),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text : "Updates",
              icon : Icons.update,
              onClicked: () => selectedItem(context,3),
            ),

            const SizedBox(height: 24,),
            Divider(color: Colors.white70,),
            const SizedBox(height: 24,),
            buildMenuItem(
              text : "Plugins",
              icon : Icons.account_tree_outlined,
              onClicked: () => selectedItem(context,4),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text : "Notifications",
              icon : Icons.notifications_outlined,
              onClicked: () => selectedItem(context,5),
            ),

          ],
        ),
       ),
    );
  }

Widget builderHeader( 
  {
     final  name,
     final  email,
     final  imageurl,
     final  onClicked,

  }
)=>InkWell(
  onTap: onClicked,
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 40),
    child: Row(
      children: [
         CircleAvatar(radius: 30,backgroundColor: Colors.green,),
         SizedBox(width: 20,)
      ],
    ),
    ),
);
  
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

   void selectedItem(BuildContext context,int index){
     Navigator.of(context).pop();
      switch(index){
        case 0:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PeoplePage()));
           break;
        case 1:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WorkflowPage()));
           break;
        case 2:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavoritePage()));
           break;
        case 3:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UpdatesPage()));
           break;
        case 4:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PluginsPage()));
           break;
        case 5:
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NotificationsPage()));
           break;

      }
    }

}
