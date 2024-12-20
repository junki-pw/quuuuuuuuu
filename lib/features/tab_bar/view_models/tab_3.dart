import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_3.g.dart';

@riverpod
Future<void> tabBarTestTab3InitAsync(Ref ref) async {
  await Future.delayed(Duration(seconds: 1));
}
