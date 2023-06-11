import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _img1 =
      'https://marketplace.canva.com/EAFHm4JWsu8/1/0/1600w/canva-pink-landscape-desktop-wallpaper-HGxdJA_xIx0.jpg';
  final String _img2 = 'https://i.ibb.co/cNG6whW/logo-turkey.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Başlık'),
        ),
        body: Container(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: sorunluContainer,)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('tıklandı');
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.book,color: Colors.blue,),
        ),
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return [
          Container(width: 75,height: 75,color:Colors.yellow,),
          Expanded(child: Container(width: 75,height: 75,color:Colors.redAccent,)),
          Container(width: 75,height: 75,color:Colors.blue,),
          Container(width: 75,height: 75,color:Colors.brown,),
          Container(width: 75,height: 75,color:Colors.tealAccent,),
          Container(width: 75,height: 75,color:Colors.yellow,),
          Container(width: 75,height: 75,color:Colors.orangeAccent,),
        ];
  }

  List<Widget> get expandedContainer { //hep eşit dağıt. eksik kalırsan da eşit dağıt.
    return [
          Expanded(flex:2, child: Container(height: 75,color:Colors.blue,)),
          Expanded(flex:2, child: Container(height: 75,color:Colors.teal,)),
          Expanded(flex:2, child: Container(height: 75,color:Colors.orange,)),
          Expanded(flex:2, child: Container(height: 75,color:Colors.redAccent,)),
        ];
  }

  List<Widget> get flexibleContainer { //genişliğin kadar büyü ama yer kalmıyorsa eşit dağıt
    return [
          Flexible(flex:1, child: Container(width: 250,height: 300,color:Colors.yellow,)),
          Flexible(flex:1, child: Container(width: 350,height: 300,color:Colors.blue,)),
        ];
  }

  Widget satirSutun() {
    return Container(
        color: Colors.red.shade300,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //önemli
          crossAxisAlignment: CrossAxisAlignment.start, // önemli */
          children: [
          Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //önemli
            children: [
              Text('F'),Text('e'),Text('r'),Text(' K')],
          ),
          Icon(Icons.add_circle, size: 64, color: Colors.green,),
          Icon(Icons.rocket_launch, size: 64, color: Colors.red,),
          Icon(Icons.person_3, size: 64, color: Colors.blue,),
          Icon(Icons.book_online, size: 64, color: Colors.orange,),
        ]),
      );
  }

  Widget containerDersleri() {
    return Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration:  BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              border: Border.all(width: 4, color: Colors.purple),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                  image: NetworkImage(_img2), 
                  fit: BoxFit.scaleDown, 
                  repeat: ImageRepeat.repeat,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.orange,
                      offset: Offset(10, 20),
                      blurRadius: 30), 
                    BoxShadow(
                      color:Colors.blue,
                      offset: Offset (-12,-22),
                      blurRadius: 30),
                      ]),
          child: const Text(
            'Fer',
            style: TextStyle(fontSize: 128),
            ),
        ),
      );
  }
}
