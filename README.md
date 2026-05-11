Trabalho 2 Bimestre - Flutter


Desafio 1

O Desafio 1 foi implementado no arquivo:

app/lib/widgets/filmes_listview.dart

Foi utilizado ListView.builder no lugar de ListView com children, para melhorar o desempenho da lista de filmes.


Desafio 2

O Desafio 2 foi implementado nos arquivos:

app/lib/widgets/filmes_listview.dart
app/lib/main.dart

Foi adicionado InkWell nos cards dos filmes, permitindo clique no item. Ao clicar em um filme, aparece um SnackBar informando qual filme foi selecionado.

Como executar

Entrar na pasta do projeto:

cd app

Rodar os comandos:

flutter pub get
flutter run


----------------------------------------------------------------------------------------------------------------------------------


Professor, subi os Desafios 1 e 2 no mesmo repositório.

Para encontrar o código, acesse a pasta:

app/lib/

O Desafio 1 está no arquivo:

app/lib/widgets/filmes_listview.dart

Nele eu alterei a lista para usar ListView.builder, melhorando o desempenho da lista de filmes.

O Desafio 2 também está no arquivo:

app/lib/widgets/filmes_listview.dart

Nele eu adicionei interação nos cards dos filmes usando InkWell e onTap.

A mensagem de feedback ao clicar no filme está no arquivo:

app/lib/main.dart

Quando o usuário clica em um filme, aparece um SnackBar com a mensagem:
"Você selecionou: nome do filme".
