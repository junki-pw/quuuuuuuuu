import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_2.g.dart';

@riverpod
Future<void> tabBarTestTab2AsyncInit(Ref ref) async {
  await Future.delayed(const Duration(seconds: 1));
  final bool isSuccess = Random().nextBool();
  if (isSuccess) {
    return;
  } else {
    throw Exception('エラーが発生しました');
  }
}

@riverpod
class TabBarTestTab2 extends _$TabBarTestTab2 {
  @override
  FutureOr<void> build() async {
    await Future.delayed(const Duration(seconds: 3));

    /// ref が dispose されたことを検知できるか検証する、その間に非同期処理が走ってるか検証したい
  }
}
