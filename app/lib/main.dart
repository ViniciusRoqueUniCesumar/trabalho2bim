import 'package:flutter/material.dart';

import 'routes/app_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1F6FEB)),
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(),
    );
  }
}