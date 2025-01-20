import 'package:flutter_application_1/repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class CounterAsync extends _$CounterAsync {
  @override
  FutureOr<int> build() {
    return 0;
  }

  Future<int> rand() async {
    final value = ref.watch(repoProvider).randomInt();
    return value;
  }
}
