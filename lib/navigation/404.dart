import 'package:flutter/material.dart';

class Error404 extends StatelessWidget {
  const Error404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayfa Bulunamadı'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Text(
          '404',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
