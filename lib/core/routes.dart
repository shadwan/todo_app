import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/home/start',
  routes: [
    GoRoute(
        path: '/home/settings',
        builder: (context, state) {
          return Container(
            color: Colors.amber,
            child: ElevatedButton(
              child: Text('Go back'),
              onPressed: () => context.go('/home/start'),
            ),
          );
        }),
    GoRoute(
        path: '/home/start',
        builder: (context, state) {
          return Container(
            color: Colors.blueGrey,
            child: ElevatedButton(
              child: Text('Go settings'),
              onPressed: () => context.go('/home/settings'),
            ),
          );
        }),
  ],
  debugLogDiagnostics: true,
);
