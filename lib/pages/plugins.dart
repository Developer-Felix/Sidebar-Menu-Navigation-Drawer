import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class PluginsPage extends StatelessWidget {
  const PluginsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(backgroundColor: Colors.amber,centerTitle: true,title: Text("Plugins"),),
      body: Text("Plugins"),
    );
  }
}