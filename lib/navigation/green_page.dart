import 'dart:math';
import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  GreenPage({super.key});
  int _rasgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Page'),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false, // geri butonunu sil
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // herkesi ortaya alıyor
          children: [
            Text('Green Page', style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  _rasgeleSayi = Random().nextInt(100);
                  print("sayı: $_rasgeleSayi");
                  Navigator.of(context).pop(_rasgeleSayi);
                },
                child: Text('Pop ile Geri Dön')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/OrangePage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade300),
                child: Text('Orange Git')),
          ],
        ),
      ),
    );
  }
}
