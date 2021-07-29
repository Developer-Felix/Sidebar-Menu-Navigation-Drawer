import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(backgroundColor: Colors.amber,centerTitle: true,title: Text("People"),),
      body: Text("People"),
    );
  }
}