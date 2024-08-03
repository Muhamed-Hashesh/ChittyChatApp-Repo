import 'package:flutter/material.dart';

myTabBar(BuildContext context, TabController tabController) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: TabBar(
      dividerHeight: 0,
      automaticIndicatorColorAdjustment: false,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 5,
      indicatorColor: Theme.of(context).colorScheme.primary,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: -10),
      unselectedLabelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontSize: 18,
          ),
      labelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
          ),
      controller: tabController,
      labelPadding: const EdgeInsets.symmetric(vertical: 12),
      tabs: const <Widget>[
        Text('Chats'),
        Text('Groups'),
        Text('Calls'),
      ],
    ),
  );
}
