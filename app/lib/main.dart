import 'package:flutter/material.dart';

import 'models/filme_item.dart';
import 'widgets/filmes_listview.dart';

void main() {
  runApp(const MainApp());
}

const List<FilmeItem> filmes = <FilmeItem>[
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

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1F6FEB)),
        useMaterial3: true,
      ),
      home: const TelaPrincipalMovieApp(),
    );
  }
}

class TelaPrincipalMovieApp extends StatelessWidget {
  const TelaPrincipalMovieApp({super.key});

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
            ScaffoldMessenger.of(context).clearSnackBars();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Você selecionou: ${filme.titulo}'),
                duration: const Duration(seconds: 2),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
        ),
      ),
    );
  }
}