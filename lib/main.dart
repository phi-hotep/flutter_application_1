import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tip = ref.watch(counterAsyncProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test code'),
        ),
        body: ElevatedButton(
          onPressed: () {
            ref.read(counterAsyncProvider.notifier).rand();
          },
          child: Text(
              '${tip.when(data: (val) => val, error: (e, st) => e.toString(), loading: () => '')}'),
        ));
  }
}
