import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(backgroundColor: Colors.amber,centerTitle: true,title: Text("Notifications"),),
      body: Text("Notifications"),
    );
  }
}