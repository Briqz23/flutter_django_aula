import 'dart:core';
import 'dart:io';
import 'dart:math';

void main() {
  ex27();
}

void ex1() {
  int r = 5;
  print('A área do círculo é de ${pi * r * r}');
}

void ex2() {
  int a = 1;
  int b = -3;
  int c = 2;

  double r1 = -b + sqrt((b * b) - 4 * a * c) / (2 * a);
  double r2 = -b - sqrt((b * b) - 4 * a * c) / (2 * a);

  print('raiz 1 : $r1 \nraiz 2 : $r2');
}

void ex3() {
  int r = 4;
  print('O volume da esfera com raio 4 é de: ${(4 / 3) * (pi * r * r * r)}cm³');
}

void ex4() {
  final int res = 2 + 3 * 4 - (2 * 3) + 2 ^ 3;

  print("O valor é: $res");
}

void ex5() {
  int t_farenheit = 100;
  num t_celcius = (t_farenheit - 32) * (5 / 9);
  print('$t_farenheit em Celcius é: $t_celcius');
}

void ex6() {
  int t_celcius = 36;
  num t_farenheit = t_celcius * 9 / 5 + 32;
  print('$t_celcius em farenheit é $t_farenheit');
}

void ex7() {
  int km = 100;
  print('$km km em milhas é: ${km * 62137}');
}

void ex8() {
  int m = 60;
  print('$m milhas em km é: ${m * 1.60934}');
}

void ex9() {
  int lb = 100;
  print('$lb libras em kg é : ${lb * 0.453592}');
}

void ex10() {
  int pol = 72;
  print('$pol polegadas em metros é : ${pol * 0.0254}');
}

void ex11() {
  int l = 3;
  print('$l litro em galão americano é ${0.0264172 * l}');
}

void ex12() {
  int oncas = 48;
  print('$oncas onças em gramas é  : ${oncas * 28.3495}');
}

void ex13() {
  int mq = 5;
  print('$mq m² é ${mq * 10.7639} pés quadrados');
}

void ex14() {
  int mh = 120;
  print('$mh m/h é ${mh * 0.44704} m/s');
}

void ex15() {
  int horario = 7;
  if (horario >= 8 && horario <= 20) {
    if (horario >= 14 && horario <= 16) {
      print('horário almoço');
    } else {
      print('bem-vindo!');
    }
  } else {
    print('estamos fechados');
  }
}

void ex16() {
  String verificar(bool estaDisponivel, bool maisProcurado) {
    if (!estaDisponivel) {
      return 'Livro não está disponível';
    } else {
      return maisProcurado ? '7 dias' : '14 dias';
    }
  }

  String resultado = verificar(true, false);
  print(resultado);
}

void ex17() {
  String destino = 'montanha';
  switch (destino) {
    case 'tropical':
      {
        print('clima quente');
      }
      break;

    case 'norte':
      {
        print('clima será frio');
      }

      break;

    case 'deserto':
      {
        print('quente durante o dia e frio à noite');
      }
      break;
    case 'montanha':
      {
        print('frio e possivelmente com neve');
      }
      break;
    default:
      {
        print('valor inválido');
      }
      break;
  }
}

void ex18() {
  num peso = 90;
  num altura = 1.82;
  num imc = peso / (altura * altura);

  switch (imc) {
    case < 18.5:
      {
        print('abaixo do peso');
      }
      break;

    case < 25:
      {
        print('peso ideal');
      }

      break;

    case < 30:
      {
        print('excesso de peso');
      }
      break;
    case < 40:
      {
        print('obsidade');
      }
      break;
    default:
      {
        print('valor inválido');
      }
      break;
  }
}

void ex19() {
  String Popularidade(int curtidas, int compartilhamentos) {
    return (curtidas > 100 && compartilhamentos > 50)
        ? "popular"
        : (curtidas < 10 && compartilhamentos < 5)
            ? "não popular"
            : "média";
  }

  print(Popularidade(10, 20));
}

void ex20() {
  String melhor_data(semana_de_trabalho, tem_outro_evento) {
    return (semana_de_trabalho == true && tem_outro_evento == false)
        ? 'ótima'
        : (semana_de_trabalho == false || tem_outro_evento == true)
            ? 'ruim'
            : 'não determinado';
  }

  print(melhor_data(false, false));
}

void ex21() {
  //Se a ação estiver em alta e a empresa tiver bons lucros, é hora de vender.
  String comprar_ou_vender(em_alta, bons_lucros) {
    return (em_alta == true && bons_lucros == true)
        ? 'vender!'
        : (em_alta == false && bons_lucros == false)
            ? 'comprar!'
            : 'melhor esperar';
  }

  print(comprar_ou_vender(false, true));
}

void ex22() {
  String melhor_acao(sob_ataque, defesa_fraca) {
    return (sob_ataque == true && defesa_fraca == true)
        ? 'fortalecer defesas'
        : (sob_ataque == true && defesa_fraca == false)
            ? 'contra-atacar'
            : 'focar na coleta de recursos';
  }

  print(melhor_acao(true, false));
}

void ex23() {
  String previsao_tempo(pressao_caindo, tem_umidade) {
    return (pressao_caindo == true && tem_umidade == true)
        ? 'provável que chova'
        : (pressao_caindo == false && tem_umidade == false)
            ? 'provável que esteja ensolarado'
            : 'tempo parcialmente nublado';
  }

  previsao_tempo(false, false);
}

/*
void ex24() {
  String eh_suspeito(alibi, evidencia) {
    return (alibi == true && evidencia == false)
        ? 'inocente'
        : (alibi == false && evidencia == true)
            ? 'culpado'
            : 'faltam investigações';
  }
}
*/
enum Jogadas { pedra, papel, tesoura }

void ex27() {
  String get_jogada() {
    var intValue = Random().nextInt(3);
    return (Jogadas.values[intValue].name);
  }

  print("jogador A, qual seu nome?");

  String? jogador_a = stdin.readLineSync();

  print("Qual o nome do seu adversário (bot)?");
  String? jogador_b = stdin.readLineSync();

  print('digite: PEDRA, PAPEL ou TESOURA');
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
