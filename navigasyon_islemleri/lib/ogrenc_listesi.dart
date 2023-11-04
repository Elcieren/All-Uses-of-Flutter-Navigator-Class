import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi =ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler=List.generate(elemanSayisi, (index) => Ogrenci(index+1, 'isim: ${index+1}', 'soyisim : ${index+1}'));
    print('eleman sayisi alındı : $elemanSayisi');
    return Scaffold(
      appBar: AppBar(title: Text('Öğrenci Listesi')),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            var secilen=tumOgrenciler[index];
            Navigator.pushNamed(context, '/ogrenciDetay',arguments: secilen);
          },
          leading: CircleAvatar(child: Text(tumOgrenciler[index].id.toString())),
          subtitle: Text(tumOgrenciler[index].soyisim),
        );
      },itemCount: elemanSayisi,),
    );
  }
}
class Ogrenci{
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}