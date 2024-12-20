import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quuuuuuuuu/features/tab_bar/view_models/tab_3.dart';

class TabBarTab3TabView extends ConsumerWidget {
  const TabBarTab3TabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tabBarTestTab3InitAsyncProvider);

    return state.when(
      error: (error, stack) => ListView(
        children: [
          Text(error.toString()),
        ],
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (data) {
        return ListView(
          children: const [
            Text('成功'),
          ],
        );
      },
    );
  }
}
