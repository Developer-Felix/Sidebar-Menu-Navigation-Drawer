import 'package:flutter/material.dart';
import 'package:side_navigation/widgets/navigationdrawer.dart';

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(backgroundColor: Colors.amber,centerTitle: true,title: Text("Workflow"),),
      body: Text("Workflow"),
    );
  }
}