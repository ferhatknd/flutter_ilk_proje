import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/navigation/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {
    
    var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;
    print('settings ile  -> ${secilen.isim + ' ' + secilen.soyisim}');
    // Sayfaya giden dışında settings ile de veri gönderirilebilir.

    return Scaffold(
      appBar: AppBar(title: Text('Öğrenci Detay')),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
          ],
        ),
      ),
    );
  }
}
