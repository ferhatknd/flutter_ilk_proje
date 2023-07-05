import 'package:flutter/material.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';
import 'dart:math';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class BackgroundAnim extends StatelessWidget {
  BackgroundAnim({super.key});
  List<Ogrenci> tumOgrenciler = List.generate(
      5000, (i) => Ogrenci(i + 1, 'isim ${i + 1}', 'soyisim ${i + 1}'));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0x80ffffff),
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
          type: PlasmaType.circle,
          particles: 3,
          color: Color(0x44ab4700),
          blur: 0.5,
          size: 1,
          speed: 2,
          offset: 0,
          blendMode: BlendMode.difference,
          particleType: ParticleType.atlas,
          variation1: 0,
          variation2: 0,
          variation3: 0,
          rotation: 0,
          child: PlasmaRenderer(
            type: PlasmaType.circle,
            particles: 2,
            color: Color(0x44225536),
            blur: 0.4,
            size: 1,
            speed: 1,
            offset: 0,
            blendMode: BlendMode.difference,
            particleType: ParticleType.atlas,
            variation1: 0,
            variation2: 0,
            variation3: 0,
            rotation: 0,
            child: seperatedListView(),
          )),
    );
  }

  ListView seperatedListView() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int i) {
        var oankiOgrenci = tumOgrenciler[i];
        //var oankiOgrenci = tumOgrenciler.reversed.toList()[i]; // Reverse the list and access item
        return Card(
          color: i % 2 == 0
              ? Color.fromRGBO(104, 89, 66, 0.1)
              : Color.fromRGBO(107, 255, 184, 0.1),
          child: ListTile(
              onTap: () {
                //print('tıklanan eleman index: $i');
                if (i % 2 == 0) {
                  EasyLoading.instance.backgroundColor =
                      const Color.fromARGB(101, 239, 154, 154);
                  EasyLoading.instance.textColor =
                      const Color.fromARGB(97, 0, 0, 0);
                } else {
                  EasyLoading.instance.backgroundColor =
                      const Color.fromARGB(75, 211, 47, 47);
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
            color: Color.fromARGB(102, 150, 0, 0),
          );
        }
        return SizedBox();
      },
    );
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
