import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yellow Page',),backgroundColor: Colors.yellow,),
      body: Center(
        child:Text('Yellow Page',style: TextStyle(fontSize: 24),)),
    );
  }
}