import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://i.pinimg.com/originals/00/58/03/00580383b660e7ebca675fc5178f31f6.jpg';
    return Center(
      child: Column(children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    color: Colors.red.shade200,
                    child: Image.asset('assets/images/hotbabe.jpg')),
              ),
              Expanded(
                child: Container(
                    color: Colors.red.shade200,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('assets/images/eraykar.jpg'),
                      child: Text(
                        'Fer',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
        Container(
          height: 200,
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: _imgURL),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: Colors.blueAccent,
            ),
          ),
        )
      ]),
    );
  }
}
