import 'package:flutter/material.dart';

import 'animated_scroll_view_item.dart';

class AnimatedGridView extends StatelessWidget {
  const AnimatedGridView({
    Key? key,
    required this.child,
    this.itemCount = 10,
  }) : super(key: key);

  final Widget child;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      cacheExtent: 0,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return AnimatedScrollViewItem(
          child: child,
        );
      },
    );
  }
}
