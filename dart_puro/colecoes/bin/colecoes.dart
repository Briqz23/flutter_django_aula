import 'dart:ffi';
import 'dart:io';
import 'dart:math';
//import 'dart:svg';

//import 'package:colecoes/colecoes.dart' as colecoes;

import 'dart:io';

void main() {
  int op;
  Map contatos = {};
  do {
    print('1-C\n2-R\n3-U\n4-D\n5-Sair');
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print('Digite o nome: ');
        var nome = stdin.readLineSync().toString();
        print('Digite o número: ');
        var numero = stdin.readLineSync().toString();
        //final contato = {nome: numero};
        //contatos.addEntries(contato.entries);
        contatos[nome] = numero;
        print(contatos);
        break;
      case 2:
        print('Digite o nome: ');
        var nome = stdin.readLineSync().toString();
        print(contatos[nome]);
        break;
      case 3:
        print('Digite o nome: ');
        var nome = stdin.readLineSync().toString();
        print('Digite o novo número: ');
        var numero = stdin.readLineSync().toString();
        contatos.update(nome, (value) => numero);
        break;
      case 4:
        print('Digite o nome: ');
        var nome = stdin.readLineSync();
        contatos.remove(nome);
        break;
      case 5:
        break;
      default:
        print('Opção Inválida');
    }
  } while (op != 5);
}

/*
//Anotação Mapas: 

void main() {
  Map<String, Object> pessoa = {'nome': 'Ana', 'altura': 1.8};
  print(pessoa.runtimeType); // _Map<String, Object>
  print(pessoa['genero']); //null, mas não dá erro.
  print(pessoa.keys.runtimeType); //_CompactIterable<String>
} //caso fosse um dynamic, ele deixaria passar erros de compilação: dynamic nome; nome.metodo_inexistente();
  // dessa forma, Object torna-se uma opção mais segura por causada verificação em tempo de compilação


void main() {
  var portugues = {'Brasil', 'Portugal'};
  var europa = {'Alemanha', 'Portugal', 'Espanha'};
  print(portugues.union(europa));
  print(europa.intersection(europa));
  print(europa.difference(portugues));
  print(europa.difference((portugues.intersection(europa))));
} 

*/
/*
testando final na lista
void main() {
  //lista com final; final é executado em tempo de execução
  //eu posso adicionar, mas não mudar a lista inteiramente.
  final nomes = ['Ana', 'Pedro'];
  nomes.add('João'); // funciona
  nomes = ['Ana']; // não funciona

  ** criando lista vazia ** 
  var nomes2 = [] //runtimeType : List<dynamic>
  nomes[1]=null // não funciona! Null safety
  List<String?> nomes4 = [null, 'Ana'] //funciona, mas ela não pode nascer com null

}

List<int> numeros = [1, 2, 3];
void main(List<String> args) {
  int soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  print(soma);
}
List<int> dadosMega() {
  List<int> numeosMega = [];
  for (int i = 0; i <= 5; i++) {
    numeosMega.add(Random().nextInt(100));
  }
  return numeosMega;
}

List<int> dadosUsuario() {
  List<int> valores = [];

  for (int i = 0; i <= 5; i++) {
    int valor = int.parse(stdin.readLineSync()!);
    if (valores.contains(valor)) {
      print("número já existente na lista! Tente novamente.");
      i--;
    }
    valores.add(valor);
  }
  return valores;
}

void main(List<String> args) {
  List<int> valoresUsuario = dadosUsuario();
  List<int> valoresMega = dadosMega();

  for (int i = 0; i <= valoresMega.length; i++) {
    if (valoresMega.contains(valoresUsuario[i])) ;
  }
}

*/
