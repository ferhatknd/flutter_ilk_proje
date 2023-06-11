import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/image_widget.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';

void main() {
  debugPrint('main metodu çalıştı');
  // ignore: prefer_const_constructors
  runApp(IlkApp());
}

class IlkApp extends StatelessWidget {
  const IlkApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('başlık metodu çalıştı');
    return MaterialApp(
      title: 'ilk Program Başlık',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Ornekleri')
        ),
        body: const ImageOrnekleri(),
      )
    );
  }
}
