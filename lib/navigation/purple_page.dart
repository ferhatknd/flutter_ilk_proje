import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PurplePage'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // herkesi ortaya alıyor
          children: [
            Text(
              'PurplePage',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/RedPage');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: Text('Kırmızıya Git'))
          ],
        ),
      ),
    );
  }
}
