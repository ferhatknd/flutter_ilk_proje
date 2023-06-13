import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  String secilenSehir = 'Şehir Seçiniz';
  List<String> renkler = ['mavi', 'yesil', 'mor', 'turuncu'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (value) {
          setState(() {
            print('seçilen: $value');
            secilenSehir = value;
          });
        },
        //icon: Icon(Icons.arrow_drop_down),
        //child: Text(secilenSehir),
        itemBuilder: (context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'bursa',
            ),
            PopupMenuItem(
              child: Text('İzmir'),
              value: 'izmir',
            ),
            PopupMenuItem(
              child: Text('Manisa'),
              value: 'manisa',
            ),
          ]; */
          return renkler
              .map(
                (e) => PopupMenuItem(
                  child: Text(e),
                  value: e,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
