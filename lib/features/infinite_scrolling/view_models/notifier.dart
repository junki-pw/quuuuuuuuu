import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier.freezed.dart';
part 'notifier.g.dart';

@freezed
abstract class InfiniteScrollingState with _$InfiniteScrollingState {
  const factory InfiniteScrollingState({
    @Default(0) double pixels,
    @Default(false) bool isLoading,
  }) = _InfiniteScrollingState;
}

@riverpod
class InfiniteScrolling extends _$InfiniteScrolling {
  @override
  InfiniteScrollingState build() => const InfiniteScrollingState();

  void updateScrollPixels(double pixels) {
    state = state.copyWith(pixels: pixels);
  }

  Future<void> fetchNextPage() async {
    if (state.isLoading) {
      print('Loading のためフェッチはスキップ');
      return;
    }
    state = state.copyWith(isLoading: true);
    print('Fetching next page...');
    await Future.delayed(const Duration(seconds: 3));
    print('Fetch Completed!');
    state = state.copyWith(isLoading: false);
  }
}
