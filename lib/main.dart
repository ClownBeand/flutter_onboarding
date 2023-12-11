import 'package:flutter/material.dart';

import 'ui/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Вход в систему',
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
