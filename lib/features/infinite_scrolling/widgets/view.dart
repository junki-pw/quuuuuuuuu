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

    // ref.watch(infiniteScrollingPixelsProvider);

    final bool isLoading =
        ref.watch(infiniteScrollingProvider).valueOrNull?.isLoading ?? false;

    final List<String> bookIds =
        ref.watch(infiniteScrollingProvider).valueOrNull?.bookIds ?? [];

    final value = ref.watch(infiniteScrollingProvider).value;
    print('value: ${value?.bookIds}');

    final valueOrNull = ref.watch(infiniteScrollingProvider).valueOrNull;
    print('valueOrNull: $valueOrNull');

    // final requireValue = ref.watch(infiniteScrollingProvider).requireValue;
    // print('requireValue: $requireValue');

    // return ref.watch(infiniteScrollingProvider).when(
    //       error: (error, stack) => PrimaryWhenErrorWidget(error),
    //       loading: () => const PrimaryWhenLoadingWidget(),
    //       data: (data) {
    //         return Container();
    //       },
    //     );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scrolling'),
      ),
      body: ListView(
        controller: scrollController
          ..addListener(() {
            // print('pixels: ${scrollController.offset}');
            // print('pixels: ${scrollController.position.minScrollExtent}');
            // print('pixels: ${scrollController.position.maxScrollExtent}');
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
