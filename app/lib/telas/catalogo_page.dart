import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/filme_item.dart';
import '../routes/app_router.dart';
import '../widgets/filmes_listview.dart';

@RoutePage()
class CatalogoPage extends StatelessWidget {
  const CatalogoPage({super.key});

  static const List<FilmeItem> filmes = <FilmeItem>[
    FilmeItem(
      titulo: 'Vingadores',
      imageUrl: 'https://picsum.photos/seed/vingadores/500/750',
    ),
    FilmeItem(
      titulo: 'Batman',
      imageUrl: 'https://picsum.photos/seed/batman/500/750',
    ),
    FilmeItem(
      titulo: 'Homem-Aranha',
      imageUrl: 'https://picsum.photos/seed/homemaranha/500/750',
    ),
    FilmeItem(
      titulo: 'Interestelar',
      imageUrl: 'https://picsum.photos/seed/interestelar/500/750',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App - Lista de Filmes'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FilmesListView(
          filmes: filmes,
          onFilmeTap: (FilmeItem filme) {
            context.router.push(
              DetalhesFilmeRoute(filme: filme),
            );
          },
        ),
      ),
    );
  }
}