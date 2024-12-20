import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quuuuuuuuu/features/tab_bar/view_models/notifier.dart';
import 'package:quuuuuuuuu/features/tab_bar/widgets/tab1.dart';
import 'package:quuuuuuuuu/features/tab_bar/widgets/tab2.dart';
import 'package:quuuuuuuuu/features/tab_bar/widgets/tab3.dart';

enum TabTestType {
  tab1('Tab 1'),
  tab2('Tab 2'),
  tab3('Tab 3'),
  ;

  final String title;

  const TabTestType(this.title);
}

class TabBarTestView extends HookConsumerWidget {
  const TabBarTestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      tabBarTestProvider,
      (preValue, newValue) {},
    );

    final controller = useTabController(
      initialLength: TabTestType.values.length,
    );

    return DefaultTabController(
      length: TabTestType.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar Test'),
          bottom: TabBar(
            controller: controller
              ..addListener(() {
                  print(controller.index);
              }),
            tabs: [
              for (final type in TabTestType.values) Tab(text: type.title),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            TabBarTab1TabView(),
            TabBarTestTab2TabView(),
            TabBarTab3TabView(),
          ],
        ),
      ),
    );
  }
}
