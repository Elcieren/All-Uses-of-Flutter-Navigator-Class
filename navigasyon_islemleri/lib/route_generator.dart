
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigasyon_islemleri/main.dart';
import 'package:navigasyon_islemleri/ogrenc_listesi.dart';
import 'package:navigasyon_islemleri/ogrenci_detay.dart';
import 'package:navigasyon_islemleri/oragne_page.dart';
import 'package:navigasyon_islemleri/purple_page.dart';
import 'package:navigasyon_islemleri/yellow_page.dart';

class RouteGenerator{

 static Route<dynamic>? _roteOlustur(Widget gidilecekWidget,RouteSettings settings){
    if(defaultTargetPlatform == TargetPlatform.iOS){
         return CupertinoPageRoute(
          settings: settings,
          builder: (context)=> gidilecekWidget);
      }else if(defaultTargetPlatform == TargetPlatform.android){
          return MaterialPageRoute(
            settings: settings,
            builder: (context)=>gidilecekWidget);
      }else{
        return  CupertinoPageRoute(
          settings: settings,
          builder: (context)=> gidilecekWidget);
      }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings){
    switch(settings.name){
      case'/':
      return _roteOlustur(AnaSayfa(),settings);
      case'/orangePage':
      return _roteOlustur(OrangePage(),settings);
      case'/yellowPage':
      return _roteOlustur(YellowPage(),settings);
      case'/ogrenciListesi':
      return _roteOlustur(OgrenciListesi(),settings);
      case'/ogrenciDetay':
      var parametrediOgrenci=settings.arguments as Ogrenci;
      return _roteOlustur(OgrenciDetay(secilenOgrenci: parametrediOgrenci,),settings);
      case'/morPage':
      return _roteOlustur(PurplePage(),settings);
      
      default:
      return MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(title: Text('404'),),
        body: Center(child: Text('Sayfa BULUNAMADI')),
      ),);

    }    
  }
}