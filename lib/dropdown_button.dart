import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() =>
      _DropdownButtonKullanimiState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      hint: Text('pik numbe'),
      value: dropdownValue,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ));
  }
}
