import 'package:flutter_modular/flutter_modular.dart';
import 'package:foodapp/widget/bottom_nav/navigator_page.dart';
import 'package:foodapp/widget/produk/model/hero_produks_models.dart';

class AppModule extends Module {
  String idMeal;
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => BottomNavigatorPage()),
  ];
}
