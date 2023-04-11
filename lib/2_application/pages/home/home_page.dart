import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AdaptiveLayout(
          primaryNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key('primary-navigation-medium'),
                builder: (context) => AdaptiveScaffold.standardNavigationRail(
                    destinations: destinations))
          }),
        ),
      ),
    );

    //   return Scaffold(
    //     body: SafeArea(child: child),
    //     bottomNavigationBar: BottomNavigationBar(
    //       currentIndex: _calculateSelectedIndex(context),
    //       onTap: (value) {
    //         switch (value) {
    //           case 0:
    //             context.go('/overview');
    //             break;
    //           case 1:
    //             context.go('/dashboard');
    //             break;
    //           case 2:
    //             context.go('/settings');
    //             break;
    //         }
    //       },
    //       items: const [
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.dashboard),
    //           label: 'Overview',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.dashboard),
    //           label: 'Dashboard',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.settings),
    //           label: 'Settings',
    //         ),
    //       ],
    //     ),
    //   );
    // }

    int _calculateSelectedIndex(BuildContext context) {
      final String location = GoRouterState.of(context).location;

      if (location.startsWith('/dashboard')) {
        return 1;
      } else if (location.startsWith('/settings')) {
        return 2;
      }
      return 0;
    }
  }
}
