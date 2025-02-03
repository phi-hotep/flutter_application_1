// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/details.dart';
// import 'package:flutter_application_1/home.dart';
// import 'package:flutter_application_1/main.dart';
// import 'package:flutter_application_1/settings.dart';
// import 'package:go_router/go_router.dart';

// final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
// final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

// final GoRouter router = GoRouter(
//   debugLogDiagnostics: true,
//   initialLocation: '/home',
//   navigatorKey: _rootNavigatorKey,
//   routes: [
//     StatefulShellRoute.indexedStack(
//       builder: (context, state, navigationShell) =>
//           ScaffoldWithNestedNavigation(navigationShell: navigationShell),
//       branches: [
//         StatefulShellBranch(
//           navigatorKey: _shellNavigatorAKey,
//           routes: [
//             GoRoute(
//               path: '/home',
//               builder: (context, state) => const Home(),
//               routes: [
//                 GoRoute(
//                   path: 'details',
//                   pageBuilder: (context, state) {
//                     return CustomTransitionPage(
//                       key: state.pageKey,
//                       child: const Details(),
//                       transitionsBuilder:
//                           (context, animation, secondaryAnimation, child) {
//                         // Change the opacity of the screen using a Curve based on the the animation's
//                         // value
//                         return FadeTransition(
//                           opacity: CurveTween(curve: Curves.easeInOutCirc)
//                               .animate(animation),
//                           child: child,
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 // GoRoute(
//                 //   path: 'details',
//                 //   builder: (context, state) => const Details(),
//                 // )
//               ],
//             )
//           ],
//         ),
//         StatefulShellBranch(
//           navigatorKey: _shellNavigatorBKey,
//           routes: [
//             GoRoute(
//               path: '/settings',
//               builder: (context, state) => const Settings(),
//             ),
//           ],
//         )
//       ],
//     )
//   ],
// );
