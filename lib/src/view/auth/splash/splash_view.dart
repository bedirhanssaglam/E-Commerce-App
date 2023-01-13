import 'package:e_commerce/src/core/extensions/string_extensions.dart';
import 'package:e_commerce/src/core/init/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/enums/icon_enums.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 10),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          IconEnums.splash.iconName.toLottie,
          controller: _controller,
          fit: BoxFit.cover,
          height: 40.h,
          animate: true,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward().whenComplete(
                () => context.router.push(
                  IntroRoute(),
                ),
              );
          },
        ),
      ),
    );
  }
}
