import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quuuuuuuuu/features/tab_bar/widgets/view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier.freezed.dart';
part 'notifier.g.dart';

@freezed
abstract class TabBarTestState with _$TabBarTestState {
  const factory TabBarTestState({
    @Default([]) List<TabTestType> types,
  }) = _TabBarTestState;

  const TabBarTestState._();
}

@riverpod
class TabBarTest extends _$TabBarTest {
  @override
  TabBarTestState build() => const TabBarTestState();
}
