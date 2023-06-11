import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container contYap(String harf, Color renk, {double marj=0}) {
    // Color diye bir değişken tipi var. harf değişkeni tırnakları ile istiyor.
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: marj),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 40),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dersleri',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Row, Column'),
        ),
        body: Container(
            color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dartRow(),
                Expanded(child: derslerColumn()),
              ],
            )),
      ),
    );
  }

  Row dartRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        contYap('D', Colors.orange.shade100),
        contYap('A', Colors.orange.shade200),
        contYap('R', Colors.orange.shade300),
        contYap('T', Colors.orange.shade400),
      ],
    );
  }

  Column derslerColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          // widget a çevrildi
          child: contYap('E', Colors.yellow.shade100, marj: 15),
        ),
        Expanded(
          child: contYap('R', Colors.yellow.shade200, marj: 15),
        ),
        Expanded(
          child: contYap('S', Colors.yellow.shade300, marj: 15),
        ),
        Expanded(
          child: contYap('L', Colors.yellow.shade400, marj: 15),
        ),
        Expanded(
          child: contYap('E', Colors.yellow.shade500, marj: 15),
        ),
        Expanded(
          child: contYap('R', Colors.yellow.shade600, marj: 15),
        ),
        Expanded(
          child: contYap('İ', Colors.yellow.shade700, marj: 15),
        ),
      ],
    );
  }
}
