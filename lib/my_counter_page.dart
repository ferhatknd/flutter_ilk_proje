import 'package:flutter/material.dart';

class IlkSayfa extends StatefulWidget {
  const IlkSayfa({super.key});

  @override
  State<IlkSayfa> createState() => IlkSayfaState();
}

class IlkSayfaState extends State<IlkSayfa> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('ilk sayfa metodu çalıştı');
    return Scaffold(
        appBar: AppBar(
          title: const Text('ilk App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Butona basılma sayısı:',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                _sayac.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('buton çalıştı: değer: $_sayac');
            sayaciArtir();
          },
          child: const Icon(Icons.add),
        ));
  }

  void sayaciArtir() {
    setState(() {
    });
    _sayac++;
  }
}