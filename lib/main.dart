import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_ilk_proje/dropdown_button.dart';
import 'package:flutter_ilk_proje/image_widget.dart';
import 'package:flutter_ilk_proje/navigation/navi_main.dart';
import 'package:flutter_ilk_proje/navigation/route_generator.dart';
import 'package:flutter_ilk_proje/scaffolds/card_list_page.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';
import 'package:flutter_ilk_proje/popup_menu.dart';
import 'package:flutter_ilk_proje/scaffolds/grid_view_kullanimi.dart';
import 'package:flutter_ilk_proje/scaffolds/list.dart';
import 'package:flutter_ilk_proje/scaffolds/list_problemleri.dart';
import 'package:flutter_ilk_proje/temel_butonlar.dart';
import 'package:flutter_ilk_proje/test/background_anim_sample.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:flutter_ilk_proje/scaffolds/custom_scrool.dart';



void main() {
  runApp(IlkApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
  //..customAnimation = CustomAnimation();
}

class IlkApp extends StatelessWidget {
  const IlkApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('başlık metodu çalıştı');
    return const MaterialApp(
      title: 'Ana Program Adı',
      // home: AnaSayfa(), // eğer pushNamed kullanılacaksa adı artık '/'
      /*routes: {
        '/': (context) => AnaSayfa(),
        '/GreenPage': (context) => GreenPage(),
        '/OrangePage': (context) => OrangePage(),
        '/PurplePage': (context) => PurplePage(),
        '/RedPage': (context) => RedPage(),
        '/YellowPage': (context) => YellowPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(title: Text('404')),
                body: Center(
                  child: Text('Sayfa Bulunamadı'),
                ),
              )),
      // 404 sayfası
      */
      onGenerateRoute: RouteGenerator.routeGenerator,
      //builder: EasyLoading.init(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return NaviMainPage();
  }
}


