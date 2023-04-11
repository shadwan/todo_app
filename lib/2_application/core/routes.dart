import 'package:go_router/go_router.dart';

import '../2_application/pages/dashboard/dashboard_page.dart';
import '../2_application/pages/home/home_page.dart';
import '../2_application/pages/overview/overview_page.dart';
import '../2_application/pages/settings/settings_page.dart';

final routes = GoRouter(
  initialLocation: '/overview',
  routes: [
    ShellRoute(
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: '/overview',
          builder: (context, state) => const OverviewPage(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
);
