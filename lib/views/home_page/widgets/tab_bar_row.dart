import 'package:flutter/material.dart';

myTabBar(BuildContext context, TabController tabController) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 5,
        indicatorColor: Theme.of(context).colorScheme.primary,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: -10),
        unselectedLabelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
        labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
        // labelColor: Theme.of(context).colorScheme.primary,
        controller: tabController,
        // labelColor: Theme.of(context).colorScheme.onPrimary,
        labelPadding: const EdgeInsets.symmetric(vertical: 12),
        tabs: const <Widget>[
          Text('Chats'),
          Text('Groups'),
          Text('Calls'),
        ]),
  );
}
