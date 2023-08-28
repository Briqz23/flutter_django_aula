import 'dart:io';

void main() {
  var filme1 = {
    'titulo': 'Year One',
    'genero': 'Comédia',
    'notas': <double>[5, 1],
  };
  var filme2 = {
    'titulo': 'Titanic',
    'genero': 'Romance',
    'notas': <double>[5, 2]
  };
  var filmes = [filme1, filme2];
  List usuarios = [];
  do {
    print('Digite 1 para Create\n2 para Read\n3 para Update\n4 para Delete.');
    int op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print('Digite o título do filme que deseja add:');
        String auxTituloCreate = stdin.readLineSync()!;
        print('Digite o gênero do filme que deseja add:');
        String auxGeneroCreate = stdin.readLineSync()!;
        var aux_filme = {
          'titulo': auxTituloCreate,
          'genero': auxGeneroCreate,
          'notas': <double>[]
        };

        filmes.add(aux_filme);
        break;
      case 2:
        print(
            'Deseja ver todos os filmes ou algum específico (pesquise por título)?\n1 para Todos, 2 para título específico');
        int op2 = int.parse(stdin.readLineSync()!);
        if (op2 == 1) {
          for (var filme in filmes) {
            if (filme['notas'] != null) {
              var notas = filme['notas'] as List<double>;
              if (notas.isNotEmpty) {
                var media =
                    notas.reduce((double a, double b) => a + b) / notas.length;
                print(
                    "${filme['titulo']} \n - ${filme['genero']}\n --> $media\n\n\n");
              } else {
                print(
                    "${filme['titulo']} \n - ${filme['genero']}--> ainda sem notas!\n\n\n");
              }
            }
          }
        }
        if (op2 == 2) {
          print('Digite o título desejado');
          String titulo = stdin.readLineSync()!;
          for (var filme in filmes) {
            if (filme['notas'] != null) {
              var notas = filme['notas'] as List<double>;
              var media =
                  notas.reduce((double a, double b) => a + b) / notas.length;
              if (filme['titulo'] == titulo) {
                print("${filme['titulo']} --> $media\n\n");
              }
            }
          }
        }
        break;
      case 3:
        print(
            'Você pode ALTERAR o título de um filme e seu gênero, assim como dar uma avaliação a ele.\n Para isso, digite o título do filme que você quer alterar:\n');

        String auxTituloUpdate = stdin.readLineSync()!;
        var filmeDict = filmes.firstWhere(
          (filme) => filme['titulo'] == auxTituloUpdate,
        );
        print(
            'O que você gostaria de alterar? \n Digite:\n 1 para título,\n2 para gênero \n3 para avaliar o filme\n');
        int op3 = int.parse(stdin.readLineSync()!);
        if (op3 == 1) {
          print(
              "OK! Vamos alterar o nome do filme. Para isso, digite o título NOVO");

          if (filmeDict != null) {
            print('Digite o novo título para o filme:');
            String novoTituloUpdate = stdin.readLineSync()!;

            filmeDict['titulo'] = novoTituloUpdate;
          } else {
            print('Filme não foi encontrado!\n\n');
          }
        }
        if (op3 == 2) {
          print(
              "OK! Vamos alterar o nome do filme. Para isso, digite o gênero NOVO");

          if (filmeDict != null) {
            print('Digite o novo gênero para o filme:');
            String novoGeneroUpdate = stdin.readLineSync()!;

            filmeDict['genero'] = novoGeneroUpdate;
          } else {
            print('Filme não foi encontrado!\n\n');
          }
        }
        if (op3 == 3) {
          print('Digite uma nota de 0-5 que deseja atribuir ao filme');
          double notaUpdate = double.parse(stdin.readLineSync()!);
          print("Nota adicionada em breve, mas agora, digite seu nome: ");
          String nome_usuario = stdin.readLineSync()!;

          if (!usuarios.contains(nome_usuario)) {
            usuarios.add(nome_usuario);
            if (filmeDict != null && notaUpdate <= 5 && notaUpdate >= 0) {
              dynamic listaNotas = filmeDict['notas'];
              listaNotas.add(notaUpdate);
            } else {
              print('você não insiriu um valor válido');
            }
          } else {
            print("\nei, esse usuário já existe, utilize outro");
          }
        }
    }
  } while (true);
}
