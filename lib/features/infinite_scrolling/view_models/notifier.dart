import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quuuuuuuuu/features/infinite_scrolling/view_models/repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier.freezed.dart';
part 'notifier.g.dart';

@freezed
abstract class InfiniteScrollingState with _$InfiniteScrollingState {
  const factory InfiniteScrollingState({
    required List<String> bookIds,
    @Default(false) bool isLoading,
  }) = _InfiniteScrollingState;
}

@riverpod
class InfiniteScrolling extends _$InfiniteScrolling {
  BookRepo get bookRepo => ref.read(bookRepoProvider.notifier);

  @override
  FutureOr<InfiniteScrollingState> build() async {
    final List<Book> books =
        await ref.read(bookRepoProvider.notifier).fetchBooks(limit: 20);

    return InfiniteScrollingState(
      bookIds: books.map((e) => e.id).toList(),
    );
  }

  Future<void> fetchNextPage() async {
    final data = state.requireValue;
    if (data.isLoading) {
      debugPrint(
        '----------------------------------------\n'
        'Loading のためフェッチはスキップ'
        '----------------------------------------',
      );
      return;
    }

    state = AsyncData(data.copyWith(isLoading: true));
    debugPrint('Fetching next books...');

    /// Fetch 処理
    await bookRepo
        .fetchBooks(limit: 20, bookId: data.bookIds.lastOrNull)
        .then(
          ((books) => state = AsyncData(
                data.copyWith(
                  bookIds: [
                    ...data.bookIds,
                    ...books.map((e) => e.id),
                  ],
                ),
              )),
        )
        .whenComplete(
          () => state = AsyncData(
            state.requireValue.copyWith(isLoading: false),
          ),
        );
  }
}

@riverpod
class InfiniteScrollingPixels extends _$InfiniteScrollingPixels {
  @override
  double build() => 0;

  void updateScrollPixels(double pixels) {
    state = pixels;
  }
}
