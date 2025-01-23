import 'package:flutter/material.dart';
import 'package:flutter_application_1/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test code'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go("/otherPage");
              },
              child: const Text('Go to otherpage'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/sub");
              },
              child: const Text('Go to Sub'),
            ),
          ],
        )));
  }
}

class OtherPage extends ConsumerWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go("/");
            },
            child: const Text('Back')),
      ),
    );
  }
}

class Sub extends ConsumerWidget {
  const Sub({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/sub/subSub');
          },
          child: const Text('Go to Sub Sub'),
        ),
      ),
    );
  }
}

class Subsub extends ConsumerWidget {
  const Subsub({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.red,
    );
  }
}
