import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orange Page',),backgroundColor: Colors.orange,),
      body: Center(
        child: Column(
          children: [
            Text('Orange Page',
            style: TextStyle(fontSize: 24),),
            ElevatedButton(
              onPressed: (){
                 Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), 
              child: Text('En Başa Dön',style: TextStyle(fontSize: 12,),)),
              ElevatedButton(
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.settings.name=='/morPage');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
              child: Text('Mora Geri Dön',style: TextStyle(fontSize: 12,),)),
              ElevatedButton(
              onPressed: (){
                  Navigator.of(context).popUntil((route) => route.settings.name=='/');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal), 
              child: Text('En başa Dön',style: TextStyle(fontSize: 12,),)),
              ElevatedButton(
              onPressed: (){
                 Navigator.of(context).pushNamedAndRemoveUntil('/yellowPage', (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
              child: Text('Sarıyı Ana Sayfadan Sonra Ekle',style: TextStyle(fontSize: 12,),))
          ],
        ),
        
        ),
    );
  }
}