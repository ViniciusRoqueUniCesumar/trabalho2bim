// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CatalogoPage]
class CatalogoRoute extends PageRouteInfo<void> {
  const CatalogoRoute({List<PageRouteInfo>? children})
    : super(CatalogoRoute.name, initialChildren: children);

  static const String name = 'CatalogoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogoPage();
    },
  );
}

/// generated route for
/// [DetalhesFilmePage]
class DetalhesFilmeRoute extends PageRouteInfo<DetalhesFilmeRouteArgs> {
  DetalhesFilmeRoute({
    Key? key,
    required FilmeItem filme,
    List<PageRouteInfo>? children,
  }) : super(
         DetalhesFilmeRoute.name,
         args: DetalhesFilmeRouteArgs(key: key, filme: filme),
         initialChildren: children,
       );

  static const String name = 'DetalhesFilmeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetalhesFilmeRouteArgs>();
      return DetalhesFilmePage(key: args.key, filme: args.filme);
    },
  );
}

class DetalhesFilmeRouteArgs {
  const DetalhesFilmeRouteArgs({this.key, required this.filme});

  final Key? key;

  final FilmeItem filme;

  @override
  String toString() {
    return 'DetalhesFilmeRouteArgs{key: $key, filme: $filme}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetalhesFilmeRouteArgs) return false;
    return key == other.key && filme == other.filme;
  }

  @override
  int get hashCode => key.hashCode ^ filme.hashCode;
}
