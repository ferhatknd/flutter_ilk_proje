import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/main.dart';
import 'package:flutter_ilk_proje/navigation/404.dart';
import 'package:flutter_ilk_proje/navigation/green_page.dart';
import 'package:flutter_ilk_proje/navigation/ogrenci_detay.dart';
import 'package:flutter_ilk_proje/navigation/ogrenci_listesi.dart';
import 'package:flutter_ilk_proje/navigation/orange_page.dart';
import 'package:flutter_ilk_proje/navigation/purple_page.dart';
import 'package:flutter_ilk_proje/navigation/red_page.dart';
import 'package:flutter_ilk_proje/navigation/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _rotaOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    // _rotaOlustur içinden buraya naviden gelen veriyi almak için üstteki RouteSettings settings eklendi.
    // aşağıdaki tüm iflere de göndermek lazım ki her olasılıkta gitsin bu settings.
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    } else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    else
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    // OgrenciListesi için navi den gönderilen arguments bu üstteki settings ile alınıyor.
    switch (settings.name) {
      //kendi otomatik geldi sanki.
      case '/':
        return _rotaOlustur(AnaSayfa(), settings);
      case '/GreenPage':
        return _rotaOlustur(GreenPage(), settings);
      case '/OrangePage':
        return _rotaOlustur(OrangePage(), settings);
      case '/PurplePage':
        return _rotaOlustur(PurplePage(), settings);
      case '/RedPage':
        return _rotaOlustur(RedPage(), settings);
      case '/YellowPage':
        return _rotaOlustur(YellowPage(), settings);
      case '/OgrenciPage':
        print(settings.name); //naviden gönderilen rota
        print(settings.arguments); //naviden gönderilen argument
        return _rotaOlustur(OgrenciListesi(), settings);
      case '/OgrenciDetay':
      var parametredekiOgrenci =settings.arguments as Ogrenci;
        return _rotaOlustur(OgrenciDetay(secilenOgrenci: parametredekiOgrenci), settings);
      default:
        return MaterialPageRoute(builder: (context) => Error404());
    }
  }
}
