import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            onLongPress: () {
              debugPrint('uzun basıldı');
            },
            style: ButtonStyle(
                alignment: AlignmentDirectional.centerStart,
                backgroundColor: MaterialStateProperty.all(Colors.black12)),
            child: Text('text Buton')),
        TextButton.icon(
            onPressed: () {}, icon: Icon(Icons.abc), label: Text('text Buton')),
        ElevatedButton(onPressed: () {}, child: Text('Elev Buton')),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_balance),
            label: const Text('Elev Buton')),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 3)
          ),
          onPressed: () {}, 
          child: Text('Out Buton')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.abc),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
            label: Text('Out icon Buton')),
      ],
    );
  }
}
