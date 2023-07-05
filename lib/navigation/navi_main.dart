import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/navigation/green_page.dart';

class NaviMainPage extends StatelessWidget {
  const NaviMainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigasyon İşlemleri'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  int? _gelenSayi = await Navigator.push<int>(
                      context,
                      CupertinoPageRoute(
                          builder: (greenContext) => GreenPage()));
                  print("pop ile gelen: $_gelenSayi");
                },
                style: ElevatedButton.styleFrom(primary: Colors.green.shade300),
                child: Text('Yeşil Sayfa')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/OrangePage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade300),
                child: Text('Turuncu Sayfa')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/PurplePage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.purple.shade300),
                child: Text('Mor Sayfa')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/RedPage');
                },
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: Text('Kırmızı Sayfa')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/YellowPage');
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.yellow.shade300),
                child: Text('Sarı Sayfa')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/OlmayanSayfa');
                },
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade700),
                child: Text('Olmayan Sayfa')),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/OgrenciPage', arguments: 'xx');
                  Navigator.of(context)
                      .pushNamed('/OgrenciPage', arguments: 60);
                },
                style: ElevatedButton.styleFrom(primary: Colors.brown.shade300),
                child: Text('Öğrenci Sayfası')),
          ],
        ),
      ),
    );
  }
}
