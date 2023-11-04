import 'package:flutter/material.dart';

import 'ogrenc_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({ required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {
    var secilen=ModalRoute.of(context)!.settings.arguments as Ogrenci;

    print('secilen ogrenic ::: ${secilen.isim}');
    return Scaffold(
      appBar: AppBar(title: Text('Ogrenci Detay'),),
      body:Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
            Text(secilen.isim)
          ]),) ,
    );
  }
}