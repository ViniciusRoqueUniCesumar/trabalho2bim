Trabalho 2 Bimestre - Flutter Desafio 1 e 2


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

---------------------------------------------------------------------------------------------------------------------------------
Professor João, neste desafio 1 2 e 3 eu fiz a refatoração da navegação do aplicativo de catálogo de filmes usando o AutoRoute. A atividade foi adicionada no mesmo repositório trabalho2bim, junto com os arquivos do projeto Flutter dos desafios 1 e 2.

No Desafio 1, eu configurei o AutoRoute criando o arquivo app_router.dart, dentro da pasta lib/routes. Nesse arquivo, foram criadas duas rotas principais: uma para a tela do catálogo de filmes e outra para a tela de detalhes do filme. Também foi colocado @RoutePage() nas telas para o AutoRoute conseguir reconhecer quais páginas fazem parte da navegação do aplicativo.

No Desafio 2, eu integrei o AutoRoute no aplicativo principal. Para isso, no arquivo main.dart, usei o MaterialApp.router junto com o routerConfig: appRouter.config(). Com essa alteração o aplicativo passou a usar o AppRouter para controlar a navegação entre as telas, em vez de abrir uma tela diretamente pelo home.

No Desafio 3, eu refatorei o clique no filme para usar a navegação do AutoRoute. Antes, a navegação poderia ser feita com Navigator.push(), mas agora foi usado context.router.push(), chamando a rota DetalhesFilmeRoute. Assim, quando o usuário clica em um filme no catálogo, o aplicativo abre a tela de detalhes daquele filme selecionado.

Os três desafios foram feitos no mesmo repositório trabalho2bim. O projeto agora usa o AutoRoute para organizar melhor a navegação, com as rotas configuradas, o AutoRoute integrado ao MaterialApp e o clique no filme abrindo a tela de detalhes pelo sistema de rotas.


PARA RODAR OS DESAFIOS 1 2 E 3:

Para rodar o projeto professor, abra o repositório trabalho2bim no VS Code, abra o terminal e entre na pasta do aplicativo usando o comando "cd app". Depois execute flutter pub get para baixar as dependências do projeto. Como o aplicativo usa AutoRoute, professor execute também "dart run build_runner build --delete-conflicting-outputs" para gerar as rotas automaticamente. Por fim rode o comando "flutter run" e escolha o Chrome ou outro dispositivo disponível para abrir o aplicativo. De preferência execute no Chrome.
