import 'package:e_commerce/src/core/extensions/num_extensions.dart';
import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:e_commerce/src/core/init/routes/app_router.dart';
import 'package:e_commerce/src/view/auth/intro/viewModel/intro_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../core/base/singleton/base_singleton.dart';

class IntroView extends StatelessWidget with BaseSingleton {
  IntroView({super.key});

  final PageController pageController = PageController(initialPage: 0);
  final IntroViewModel _introViewModel = IntroViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              5.h.ph,
              Expanded(
                flex: 8,
                child: Observer(
                  builder: (_) {
                    return PageView.builder(
                      controller: pageController,
                      onPageChanged: (value) {
                        _introViewModel.pageStatus(value);
                      },
                      itemCount: constants.splashData.length,
                      itemBuilder: (context, index) => _introHeader(
                        context,
                        image: constants.splashData[index]["image"]!,
                        text: constants.splashData[index]['text']!,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    40.w.pw,
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            constants.splashData.length,
                            (index) {
                              return _buildPageDots(context, index);
                            },
                          ),
                        ),
                        20.w.pw,
                        _skipButton(context),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Observer _introHeader(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Observer(
      builder: (_) {
        return Column(
          children: <Widget>[
            3.h.ph,
            Image.asset(
              image.toPng,
              height: 40.h,
            ),
            5.h.ph,
            Text(
              constants.appName,
              style: context.textTheme.headline2?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            5.h.ph,
            Text(
              text,
              style: context.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }

  Observer _buildPageDots(BuildContext context, int index) {
    return Observer(
      builder: (_) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: 1.w),
          height: 1.5.w,
          width: _introViewModel.page == index ? 6.w : 2.5.w,
          decoration: BoxDecoration(
            color: _introViewModel.page == index ? colors.jaffa : colors.silver,
            borderRadius: BorderRadius.circular(3),
          ),
        );
      },
    );
  }

  InkWell _skipButton(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(const HomeRoute()),
      child: Row(
        children: [
          Text(
            "Skip",
            style: context.textTheme.headline1?.copyWith(
              color: colors.jaffa,
              fontWeight: FontWeight.w500,
            ),
          ),
          2.w.pw,
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16.sp,
            color: colors.jaffa,
          ),
        ],
      ),
    );
  }
}
