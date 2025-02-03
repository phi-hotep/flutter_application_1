import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class Increment extends _$Increment {
  @override
  int build() {
    return 0;
  }

  void incrM() {
    state++;
  }
}
