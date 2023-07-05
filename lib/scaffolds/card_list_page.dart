import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/popup_menu.dart';
import 'package:flutter_ilk_proje/image_widget.dart';

class CardListPage extends StatelessWidget {
  const CardListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CardListPage'),
          actions: [PopUp()],
        ),
        body: Center(
          child: ListView(children: [
            Column(
              
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('liste bitti üzgünüm'),
            ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.account_balance),label: const Text('Listeye bak bea')),


          ]),
        ));
  }

  SingleChildScrollView singleChildListe() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.amber,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text(
                'Başlık yazısı bu kısma geleceğini anladım ama ekrandan taşacak mı onu bilmek istiyorum'),
            subtitle: Text(
                'Aly Başlık yazısı bu kısma geleceğini anladım ama ekrandan taşacak mı onu bilmek istiyorum'),
            trailing: Icon(Icons.account_balance),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 5,
          endIndent: 5,
        )
      ],
    );
  }
}
