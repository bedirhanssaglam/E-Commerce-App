import 'package:flutter/material.dart';
import 'src/view/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MonaSans',
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
