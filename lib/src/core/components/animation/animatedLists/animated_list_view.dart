import 'package:flutter/material.dart';
import 'animated_scroll_view_item.dart';

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({
    Key? key,
    this.itemCount = 10,
    required this.child,
  }) : super(key: key);

  final int? itemCount;
  final Widget child;

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      cacheExtent: 0,
      itemCount: widget.itemCount,
      itemBuilder: (context, index) => AnimatedScrollViewItem(
        child: widget.child,
      ),
    );
  }
}
