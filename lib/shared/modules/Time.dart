import 'package:futebol/shared/modules/infotime.dart';

class Time {
  int posicao;
  int pontos;
  info time;
  int jogos;
  int vitorias;
  int empates;
  int derrotas;
  int gols_pro;
  int gols_contra;
  int saldo_gols;
  int aproveitamento;
  int variacao_posicao;
  List<String> ultimos_jogos;

  Time(this.posicao,this.pontos, this.time, this.jogos, this.vitorias, this.empates, this.derrotas, this.gols_pro, this.gols_contra, this.saldo_gols, this.aproveitamento, this.variacao_posicao, this.ultimos_jogos);

  factory Time.fromMap(Map<String, dynamic> map){
    return Time(map['posicao'], map['pontos'], map['time'], map['jogos'], map['vitorias'], map['empates'], map['derrotas'], map['gols_pro'], map['gols_contra'], map['saldo_gols'], map['aproveitamento'], map['variacao_posicao'], map['ultimos_jogos']);

  }

  Map<String, dynamic > toMap(){
    return{
      'posicao': posicao,
      'pontos': pontos,
      'time': time,
      'jogos': jogos,
      'vitorias': vitorias,
      'empates': empates,
      'derrotas': derrotas,
      'gols_pro': gols_pro,
      'gols_contra': gols_contra,
      'saldo_gols': saldo_gols,
      'aproveitamento': aproveitamento,
      'variacao_posicao': variacao_posicao,
      'ultimos_jogos': ultimos_jogos,
    };
  }

}