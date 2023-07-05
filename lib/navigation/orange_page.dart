import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OrangePage'), backgroundColor: Colors.orange,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // herkesi ortaya alıyor
          children: [
            Text('OrangePage', style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/PurplePage');},
                style: ElevatedButton.styleFrom(primary: Colors.purple.shade300),
                child: Text('Mora Git')),
            ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/RedPage');},
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: Text('Kırmızıya Git')),                
          ],
        ),
      ),
    );
  }
}