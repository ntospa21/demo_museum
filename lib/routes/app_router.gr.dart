// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [FullScreenImageViewerScreen]
class FullRouteImageViewerRoute
    extends PageRouteInfo<FullRouteImageViewerRouteArgs> {
  FullRouteImageViewerRoute({
    required List<String> imageUrls,
    required int initialIndex,
    List<PageRouteInfo>? children,
  }) : super(
         FullRouteImageViewerRoute.name,
         args: FullRouteImageViewerRouteArgs(
           imageUrls: imageUrls,
           initialIndex: initialIndex,
         ),
         initialChildren: children,
       );

  static const String name = 'FullRouteImageViewerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FullRouteImageViewerRouteArgs>();
      return FullScreenImageViewerScreen(
        imageUrls: args.imageUrls,
        initialIndex: args.initialIndex,
      );
    },
  );
}

class FullRouteImageViewerRouteArgs {
  const FullRouteImageViewerRouteArgs({
    required this.imageUrls,
    required this.initialIndex,
  });

  final List<String> imageUrls;

  final int initialIndex;

  @override
  String toString() {
    return 'FullRouteImageViewerRouteArgs{imageUrls: $imageUrls, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [InteractiveViewScreen]
class InteractiveViewRoute extends PageRouteInfo<void> {
  const InteractiveViewRoute({List<PageRouteInfo>? children})
    : super(InteractiveViewRoute.name, initialChildren: children);

  static const String name = 'InteractiveViewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return InteractiveViewScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
