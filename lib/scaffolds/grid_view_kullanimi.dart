import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue, width: 5, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red[100 * ((index + 1) % 8)],
              gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: const DecorationImage(
                  image: AssetImage("assets/images/texture-cloud.jpg"),
                  fit: BoxFit.cover),
            ),
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Text(
                  "Selam Flutter 2nd $index",
                  //textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.indigo),
                ),
                onDoubleTap: () =>
                    debugPrint("$index nolu yazıya çift basıldı!"),
              ),
            ),
          ),
          onTap: () => debugPrint("Merhaba Flutter $index"),
          onDoubleTap: () => debugPrint("Merhaba Flutter $index double tap"),
          onLongPress: () => debugPrint("Merhaba Flutter $index uzun basıldı"),
          onHorizontalDragStart: (e) =>
              debugPrint("Merhaba Flutter $index yatay taşıma $e"),
        );
      },
    );
  }
}

/*

GridView.extent(
      maxCrossAxisExtent: 140, // alana sıkıştırmak için minimum genişlik gibi bir şey.
      primary:
          false, // ekrana sığdığında kaydırma efekti görünsün mü görünmesin mi?
      scrollDirection: Axis.vertical, // yatay için horizontal kaydırma.
      // reverse: true, // listeyi tersine yapar.
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
*/    

/*

GridView.count(
      crossAxisCount: 3,
      primary:
          false, // ekrana sığdığında kaydırma efekti görünsün mü görünmesin mi?
      scrollDirection: Axis.vertical, // yatay için horizontal kaydırma.
      reverse: true, // listeyi tersine yapar.
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,
          child: Text(
            "Selam Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

*/
