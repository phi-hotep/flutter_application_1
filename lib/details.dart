import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Details extends ConsumerWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var t = ref.watch(incrementProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: [
          Text('$t'),
          ElevatedButton(
            onPressed: () {
              ref.read(incrementProvider.notifier).incrM();
            },
            child: const Text('Increment'),
          )
        ],
      ),
    );
  }
}
