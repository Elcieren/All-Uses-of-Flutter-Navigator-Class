import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
   RedPage({super.key});
   int _rastgelesayi=0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('on will pop çalıştı');
        _rastgelesayi=Random().nextInt(100);
        Navigator.pop(context,_rastgelesayi);

        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Red Page',),
            backgroundColor: Colors.red,
           // automaticallyImplyLeading: false,
            ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(onPressed: () {
                  _rastgelesayi=Random().nextInt(100);
                  print('üretilen sayi $_rastgelesayi');
                  Navigator.of(context).pop(_rastgelesayi);
                }, child: Text('Geri Dön')),
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, '/orangePage');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade600), 
                child: Text('Go to  orange'))
            ],
          ),
            ),
      ),
    );
  }
}