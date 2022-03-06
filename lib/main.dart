import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ui/tap_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData(
              iconTheme: const IconThemeData(color: Color(0xFFFFFDFD))),
          home: const TapNavigationBar(),
        );
      },
    );
  }
}
