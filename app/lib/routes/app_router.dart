import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/filme_item.dart';
import '../telas/catalogo_page.dart';
import '../telas/detalhes_filme_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CatalogoRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: DetalhesFilmeRoute.page,
          path: '/detalhes-filme',
        ),
      ];
}