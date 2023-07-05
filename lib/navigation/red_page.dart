import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // herkesi ortaya alıyor
          children: [
            Text(
              'RedPage',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/OrangePage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade300),
                child: Text('Orange a bi daha Git')),
            Text('Ders Konuları burda:'),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                // Navigator.popUntil kullanımı:
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
                child: Text('İlk Sayfaya Git')),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(
                      context, (route) => route.settings.name == '/PurplePage');
                },
                // Navigator.popUntil kullanımı:
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
                child: Text('Route setting name /PurplePage e git')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/OrangePage', (route) => route.isFirst);
                },
                // Navigator.popUntil kullanımı:
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
                child: Text('Orange dön ve ilkin sonrasına koy')),
          ],
        ),
      ),
    );
  }
}
