import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:demo_museum/views/fullscreen_sth.dart';
import 'package:demo_museum/views/interactive_view.dart';
import 'package:demo_museum/views/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: InteractiveViewRoute.page),
        AutoRoute(page: FullRouteImageViewerRoute.page),
      ];
}
