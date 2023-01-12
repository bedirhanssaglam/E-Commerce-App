import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'animated_scroll_view_item.dart';

class AnimatedOtherLanguagesList extends StatefulWidget {
  const AnimatedOtherLanguagesList({
    Key? key,
    this.itemCount = 10,
    required this.child,
  }) : super(key: key);

  final int? itemCount;
  final Widget child;

  @override
  State<AnimatedOtherLanguagesList> createState() =>
      _AnimatedOtherLanguagesListState();
}

class _AnimatedOtherLanguagesListState
    extends State<AnimatedOtherLanguagesList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      child: ListView.builder(
        cacheExtent: 0,
        scrollDirection: Axis.horizontal,
        itemCount: widget.itemCount,
        itemBuilder: (context, index) {
          return AnimatedScrollViewItem(
            child: widget.child,
          );
        },
      ),
    );
  }
}
