import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.amber,centerTitle: true,title: Text("Favorite"),),
      body: Text("Favorite"),
    );
  }
}