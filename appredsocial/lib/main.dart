import 'package:appredsocial/rutas/login/login_vista.dart';
import 'package:appredsocial/rutas/principal/menu_vista.dart';
import 'package:appredsocial/rutas/registro/registro_vista.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'App redSocialDemo',
      routes: {
        '/': (context) => LogingVista(),//'/'vista principal
        LogingVista.routeName: (context) => LogingVista(),
        RegistroVista.routeName: (context) => RegistroVista(),
        MenuVista.routeName: (context) => MenuVista(),
      },
      initialRoute: LogingVista.routeName, //vista principal
    );
  }
}

