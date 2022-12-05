import 'package:appredsocial/rutas/login/login_controlador.dart';
import 'package:appredsocial/rutas/principal/menu_vista.dart';
import 'package:appredsocial/rutas/registro/registro_vista.dart';
import 'package:flutter/cupertino.dart';


class LogingVista extends StatelessWidget {
  static const routeName = '/login';
  LogingVista({super.key});

final _controlador = LoginControlador();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          CupertinoTextField(),
          CupertinoTextField(),
          CupertinoButton(onPressed: () {
            Navigator.pushNamed(context, menuvis  (route) => false);
          }, child: Text('iniciar sesion')),
          CupertinoButton.filled(onPressed: () async {
            try {
              await _controlador.signIn(_emailControl,password);
              //navigator.pushNamed(context,Feedview.routeName);
          } catch(error){
            print (error.toString());
          }

            Navigator.pushNamed(context, RegistroVista.routeName);
          }, child: Text('Registrarse'))
        ]),
      ),
    );
  }
}

class LoginControlador {
}
