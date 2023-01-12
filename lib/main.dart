import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'src/core/base/singleton/base_singleton.dart';
import 'src/core/init/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseSingleton {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: constants.appName,
          theme: theme.theme,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
        );
      },
    );
  }
}
