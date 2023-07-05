import 'package:flutter/material.dart';
import 'dart:math' as mat;

class CustomScroolPage extends StatelessWidget {
  const CustomScroolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue.shade200,
          expandedHeight: 200,
          floating: false, // geri gelmeye başlarken hemen gelsin mi?
          pinned: true, // title kaybolsa bile orda kalıyor.
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Silver App Bar Title"),
            centerTitle: true,
            background: Image.asset(
              'assets/images/texture-cloud.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                'Separator Text',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(_dinamikElemanMethod, childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate(_dinamikElemanMethod, childCount: 6),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 80),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_dinamikElemanMethod,
                  childCount: 6)),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 300),
        SliverFixedExtentList(
          delegate:
              SliverChildBuilderDelegate(_dinamikElemanMethod, childCount: 6),
          itemExtent: 50,
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 120,
        color: Colors.blue.shade100,
        alignment: Alignment.center,
        child: const Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 120,
        color: Colors.blue.shade200,
        alignment: Alignment.center,
        child: const Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 120,
        color: Colors.blue.shade300,
        alignment: Alignment.center,
        child: const Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 120,
        color: Colors.blue.shade400,
        alignment: Alignment.center,
        child: const Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 120,
        color: Colors.blue.shade500,
        alignment: Alignment.center,
        child: const Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget? _dinamikElemanMethod(BuildContext context, int index) {
    return Container(
      height: 100,
      color: _rasgeleRenkMethod(),
      alignment: Alignment.center,
      child: const Text(
        "Dinamik Liste Elemanı",
        style: TextStyle(fontSize: 18, fontFamily: 'RobotoBold'),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _rasgeleRenkMethod() {
    return Color.fromARGB(mat.Random().nextInt(255), mat.Random().nextInt(255),
        mat.Random().nextInt(255), mat.Random().nextInt(255));
  }
}
