import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_man_app/app.dart';
import 'package:money_man_app/features/auth/view/screens/login_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'not_found_screen.dart';

part 'app_router.g.dart';

enum AppRoute { home, login, register }

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (BuildContext context, GoRouterState state) => const MyApp(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
        routes: const [],
      ),
      GoRoute(
        path: '/register',
        name: AppRoute.register.name,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
        routes: const [],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

extension GoRouterExtension on GoRouter {
  void homeScreen() {
    go('/');
  }
}
