import 'dart:convert';

import 'package:flutter/cupertino.dart';

class info{
  int time_id;
  String nome_popular;
  String sigla;
  String escudo;

  info(this.time_id,this.nome_popular, this.sigla, this.escudo);

  factory info.fromMap(Map<String,dynamic> map){
    //if (map == null ){ return null}
    return info(map['time_id'],map['nome_popular'], map['sigla'], map['escudo']);
  }

  Map<String, dynamic> toMap(){
    return {
      'time_id': time_id,
      'nome_popular': nome_popular,
      'sigla': sigla,
      'escudo': escudo,
    };
  }

  String toJson() => jsonEncode(toMap());
}