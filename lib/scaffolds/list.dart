import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});
  List<Ogrenci> tumOgrenciler = List.generate(
      5000, (i) => Ogrenci(i + 1, 'isim ${i + 1}', 'soyisim ${i + 1}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListViewKullanimi')),
        body: seperatedListView());
  }

  ListView seperatedListView() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int i) {
        var oankiOgrenci = tumOgrenciler[i];
        //var oankiOgrenci = tumOgrenciler.reversed.toList()[i]; // Reverse the list and access item
        return Card(
          color: i % 2 == 0 ? Colors.orange.shade100 : Colors.orange.shade300,
          child: ListTile(
              onTap: () {
                //print('tıklanan eleman index: $i');
                if (i % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red.shade200;
                  EasyLoading.instance.textColor = Colors.black;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.red.shade700;
                }
                EasyLoading.showToast(
                  'Eleman tıklandı',
                  duration: Duration(seconds: 3),
                  toastPosition: EasyLoadingToastPosition.bottom,
                  dismissOnTap: true,
                );
              },
              onLongPress: () {
                _alertDialog(context, oankiOgrenci);
              },
              title: Text('Öğrenci: ${oankiOgrenci.isim}'),
              subtitle: Text('Soyad: ${oankiOgrenci.soyisim}'),
              leading: CircleAvatar(child: Text(oankiOgrenci.id.toString())),
              trailing: Icon(Icons.person)),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 5 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
        reverse: true,
        shrinkWrap: true,
        children: tumOgrenciler
            .map((Ogrenci e) => ListTile(
                  leading: CircleAvatar(child: Text(e.id.toString())),
                  title: Text('Öğrenci no: ${e.isim}'),
                  subtitle: Text('Soyad: ${e.soyisim}'),
                  trailing: Icon(Icons.person),
                ))
            .toList());
  }

  void _alertDialog(BuildContext myContext, Ogrenci secilen) {
    // myContext ile diyalog penceresi nereye açılacağını bilir.
    showDialog(
      barrierDismissible: false,    
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text('Dialog Başlık: ${secilen.toString()}'),
          content: SingleChildScrollView(
              // SingleChildScrollView sayesinde eğer metin ekrana sığmaz ise scroll ekler. Risksiz yani.
              child: ListBody(
            // column da olabilir.
            children: [
              Text('Fer'),
              Text('Fer'),
              Text('Fer'),
            ],
          )),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('kapat')),
            TextButton(onPressed: () {}, child: Text('Tamam')),
            // butonlar yanyana koyulacak ise ButtonBar widget var.
          ],
        );
      });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    return 'id: $id, $isim $soyisim';
  }
}
