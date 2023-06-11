import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL ='https://i.pinimg.com/originals/00/58/03/00580383b660e7ebca675fc5178f31f6.jpg';
    return Center(
      child: Column(
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.red.shade200,
            child: Image.asset('assets/images/hotbabe.jpg')),
            Container(
            width: 250,
            height: 250,
            color: Colors.red.shade200,
            child: Image.network(_imgURL, fit: BoxFit.cover,)),
      ]),
    );
  }
}
