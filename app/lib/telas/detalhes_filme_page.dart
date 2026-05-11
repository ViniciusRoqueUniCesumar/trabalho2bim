import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/filme_item.dart';

@RoutePage()
class DetalhesFilmePage extends StatelessWidget {
  const DetalhesFilmePage({
    super.key,
    required this.filme,
  });

  final FilmeItem filme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filme.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 260,
          margin: const EdgeInsets.all(24),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 27 / 40,
                child: Image.network(
                  filme.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (
                    BuildContext context,
                    Object error,
                    StackTrace? stackTrace,
                  ) {
                    return Container(
                      color: const Color(0xFFB0BEC5),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.broken_image_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  filme.titulo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Text(
                  'Tela de detalhes do filme selecionado.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}