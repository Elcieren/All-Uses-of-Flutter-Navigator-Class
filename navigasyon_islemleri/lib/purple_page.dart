import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Purple Page',),backgroundColor: Colors.purple,),
      body: Center(
        child:Column(
          children: [
            Text('Purple Page',style: TextStyle(fontSize: 24),),
            ElevatedButton(
              onPressed: (){
                 Navigator.of(context).pushNamed('/orangePage');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
              child: Text('Turuncu Sayfaya git',style: TextStyle(fontSize: 12,),))
          ],)
        ),
    );
  }
}