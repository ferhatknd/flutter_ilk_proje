import 'package:flutter/material.dart';

class ListViewLayoutProblemleri extends StatelessWidget {
  const ListViewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Problemleri'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: Colors.brown
          )
        ),
        // child: Text('Fer'),
        // normalde tüm ekranı kaplayan container eğer eleman konursa eleman sınırlarına iner.
        child: Column(
          // Column kendi içine çocuklar alır ve bu çocukların yükseklikleri kesin değer olmalı
          // ListView normalde sınırsız yer ister. 
          // Eğer listView expanded ile sarmalanır ise sorun olmaz. 
          children: [
            Text('Başla'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true, // alanı sınırlamak için
                children: [
                  Container(
                    height: 200,
                    color: Colors.brown.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.brown.shade400,
                  ),
                  Container(
                    height: 200,
                    color: Colors.brown.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.brown.shade400,
                  ),
                  Container(
                    height: 200,
                    color: Colors.brown.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.brown.shade400,
                  ),
                ],
              ),
            ),
            Text('Bitti')
          ],
        ),
      ),
    );
  }
}