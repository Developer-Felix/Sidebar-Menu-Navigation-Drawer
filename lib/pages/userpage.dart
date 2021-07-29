import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final name;
  final imageurl;
  const UserPage({ Key? key,this.name,this.imageurl }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(name),backgroundColor: Colors.amber,centerTitle: true,),
       body: Image.asset(imageurl,width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
    );
  }
}