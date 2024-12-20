import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quuuuuuuuu/features/tab_bar/view_models/tab_2.dart';

class TabBarTestTab2TabView extends ConsumerStatefulWidget {
  const TabBarTestTab2TabView({super.key});

  @override
  TabBarTestTab2TabViewState createState() => TabBarTestTab2TabViewState();
}

class TabBarTestTab2TabViewState extends ConsumerState<TabBarTestTab2TabView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = ref.watch(tabBarTestTab2AsyncInitProvider);

    return state.when(
      error: (error, stack) => RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(tabBarTestTab2AsyncInitProvider);
          await ref
              .read(tabBarTestTab2AsyncInitProvider.future)
              .catchError((e) => print('error: $e'));
        },
        child: ListView(
          children: [
            Text(error.toString()),
          ],
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (data) {
        return RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(tabBarTestTab2AsyncInitProvider);
            await ref
                .read(tabBarTestTab2AsyncInitProvider.future)
                .catchError((e) => print('error: $e'));
          },
          child: Column(
            spacing: 6,
            children: [
              for (final _ in [1, 1, 1, 1, 1]) ...[
                Text('成功'),
                const SizedBox(height: 6),
              ],
              Text('成功'),
              Text('成功'),
              Text('成功'),
              Text('成功'),
              Text('成功'),
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
