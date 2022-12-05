import 'package:flutter/cupertino.dart';

class RegistroVista extends StatelessWidget {
  static const routeName = '/registro';
  const RegistroVista({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Registro'),
      ),
      child: Center(
          child: CupertinoButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Regresar'),
      )),
    );
  }
}
