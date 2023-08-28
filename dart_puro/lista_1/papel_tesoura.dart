import 'dart:core';
import 'dart:io';
import 'dart:math';

enum Jogadas { pedra, papel, tesoura }

void main() {
  String get_jogada() {
    var intValue = Random().nextInt(3);
    return (Jogadas.values[intValue].name);
  }

  print("jogador A, qual seu nome?");

  String? jogador_a = stdin.readLineSync();

  print("Qual o nome do seu adversário (bot)?");
  String? jogador_b = stdin.readLineSync();

  print('digite: pedra, papel ou tesoura');
  String? jogada_a = stdin.readLineSync();
  String jogada_b = get_jogada();

  if (jogada_a == 'pedra') {
    if (jogada_b == 'pedra') {
      print('empate');
    } else if (jogada_b == 'tesoura') {
      print('$jogador_a ganha');
    } else
      print('$jogador_b ganha');
  }
  if (jogada_a == 'papel') {
    if (jogada_b == 'papel') {
      print('empate');
    } else if (jogada_b == 'pedra') {
      print('$jogador_b ganha');
    } else {
      print('$jogador_a ganha');
    }
  }
  if (jogada_a == 'tesoura') {
    if (jogada_b == 'tesoura') {
      print('empate');
    } else if (jogada_b == 'pedra') {
      print('$jogador_b ganha');
    } else {
      print('$jogador_a ganha');
    }
  }
}
