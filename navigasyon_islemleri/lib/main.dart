import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/green_page.dart';
import 'package:navigasyon_islemleri/oragne_page.dart';
import 'package:navigasyon_islemleri/red_page.dart';
import 'package:navigasyon_islemleri/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
     
       onGenerateRoute: RouteGenerator.routeGenerator,



    );
  }
}
class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
                  ElevatedButton(
                onPressed:() async{
               int?_gelensayi=await Navigator.push<int>(
                    context,CupertinoPageRoute(
                      builder: (redContext)=>RedPage()));
                      print('Ana sayfadaki sayi $_gelensayi');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300), 
                child: Text(
                  'kirmizi sayfaya gir IOS',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                  /* Navigator.push(context, route); */
                  Navigator.of(context).push<int>(MaterialPageRoute(builder: (Redcontext)=>RedPage())).then((int? value) => debugPrint('gelen sayi $value'));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300), 
                child: Text(
                  'kirmizi sayfaya gir Android',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                 Navigator.of(context).maybePop();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300), 
                child: Text(
                  'maybe pop kullanimi',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                 if (Navigator.canPop(context)) {
                   print('evet pop olabilir');
                 }else{
                  print('hayır olmaz');
                 }

                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300), 
                child: Text(
                  'can pop kullanimi',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => GreenPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300), 
                child: Text(
                  'Push replacament  kullanimi',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                 //Navigator.of(context).pushNamed(routeName)
                 Navigator.pushNamed(context, '/orangePage');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300), 
                child: Text(
                  'PushNamed kullanimi',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                 //Navigator.of(context).pushNamed(routeName)
                 Navigator.pushNamed(context, '/yellowPage');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow.shade300), 
                child: Text(
                  'yellow page',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                  Navigator.of(context).pushNamed('/ogrenciListesi',arguments: 80);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade300), 
                child: Text(
                  'Liste Oluştur ',
                  ),
                  ),
                  ElevatedButton(
                onPressed:() {
                  Navigator.of(context).pushNamed('/morPage');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300), 
                child: Text(
                  'Mor Sayfaya Git ',
                  ),
                  ),
            ],
          ),
        ),
      );
  }
}