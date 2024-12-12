import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quuuuuuuuu/features/infinite_scrolling/view_models/notifier.dart';
import 'package:quuuuuuuuu/features/infinite_scrolling/view_models/repo.dart';

class InfiniteScrollingView extends HookConsumerWidget {
  const InfiniteScrollingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    ref.listen(infiniteScrollingPixelsProvider, (preValue, newValue) {
      final bool maxScrolled = scrollController.position.pixels ==
          scrollController.position.maxScrollExtent;
      if (maxScrolled) {
        debugPrint('maxScrolled detected!');
        ref.read(infiniteScrollingProvider.notifier).fetchNextPage();
      }
    });

    final bool isLoading =
        ref.watch(infiniteScrollingProvider).valueOrNull?.isLoading ?? false;

    final List<String> bookIds =
        ref.watch(infiniteScrollingProvider).valueOrNull?.bookIds ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scrolling'),
      ),
      body: ListView(
        controller: scrollController
          ..addListener(() {
            ref
                .read(infiniteScrollingPixelsProvider.notifier)
                .updateScrollPixels(scrollController.position.pixels);
          }),
        children: [
          for (final bookId in bookIds) _Tile(bookId),
          Container(
            height: 48,
            width: double.infinity,
            color: Colors.transparent,
            child: isLoading
                ? const Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}

class _Tile extends ConsumerWidget {
  const _Tile(this.bookId);

  final String bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Book? book = ref.watch(bookProvider(bookId));

    if (book == null) {
      return Container();
    }

    return ListTile(
      title: Text('Item ${book.id}'),
    );
  }
}
