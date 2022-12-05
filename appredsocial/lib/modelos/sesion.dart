import 'package:appredsocial/modelos/usuario.dart';

class Sesion {
  final String token;
  final Usuario user;

  Sesion(this.token, this.user);
}

//
//factory Sesion(){
//  if(_sesion == null)
//  throw 'session not found'

//return _session!;
//}

