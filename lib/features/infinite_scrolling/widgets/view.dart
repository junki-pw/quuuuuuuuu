import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quuuuuuuuu/features/infinite_scrolling/view_models/notifier.dart';

class InfiniteScrollingView extends HookConsumerWidget {
  const InfiniteScrollingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    ref.listen(infiniteScrollingProvider.select((s) => s.pixels),
        (preValue, newValue) {
      final bool maxScrolled = scrollController.position.pixels ==
          scrollController.position.maxScrollExtent;
      if (maxScrolled) {
        print('maxScrolled detected!');
        ref.read(infiniteScrollingProvider.notifier).fetchNextPage();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scrolling'),
      ),
      body: ListView(
        controller: scrollController
          ..addListener(() {
            ref
                .read(infiniteScrollingProvider.notifier)
                .updateScrollPixels(scrollController.position.pixels);
          }),
        children: [
          for (int i = 0; i < 30; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}
