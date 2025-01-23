import 'package:flutter_application_1/main.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(),
        routes: [
          GoRoute(
              path: 'sub',
              builder: (context, state) => const Sub(),
              routes: [
                GoRoute(
                  path: 'subSub',
                  builder: (context, state) => const Subsub(),
                )
              ])
        ]),
    GoRoute(
      path: '/otherPage',
      builder: (context, state) => const OtherPage(),
    ),
  ],
);
