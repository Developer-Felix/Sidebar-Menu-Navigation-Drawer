import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(backgroundColor: Colors.amber,centerTitle: true,title: Text("Updates"),),
      body: Text("Updates"),
    );
  }
}