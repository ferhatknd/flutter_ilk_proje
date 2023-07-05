import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    //bu üsttede ModalRoute ile de settings alınmış oldu. elemanSayisina atandı.
    List<Ogrenci> tumOgrenciler = List.generate(
        elemanSayisi, (i) => Ogrenci(i + 1, 'isim${i + 1}', 'soyisim${i + 1}'));
    print("Eleman sayısı: $elemanSayisi");

    return Scaffold(
        appBar: AppBar(
          title: Text('Öğrenci Liste Sayfası'),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                var secilen = tumOgrenciler[i];
                Navigator.pushNamed(context, '/OgrenciDetay',
                    arguments: secilen);
              },
              // her bir öğrenciye geçiş için aksiyon.
              leading: CircleAvatar(
                backgroundColor: Colors.brown.shade300,
                child: Text(tumOgrenciler[i].id.toString()),
              ),
              title: Text(tumOgrenciler[i].isim),
              subtitle: Text(tumOgrenciler[i].soyisim),
            );
          },
          itemCount: elemanSayisi,
        ));
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
