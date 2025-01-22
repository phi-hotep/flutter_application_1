import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo.g.dart';

@riverpod
Repo repo(Ref ref) {
  return Repo();
}

class Repo {
  Future<int> randomInt() {
    final val = Random.secure().nextInt(100);
    return Future.value(val);
  }
}

@riverpod
class Test extends _$Test {
  @override
  int build() {
    return 1;
  }
}
