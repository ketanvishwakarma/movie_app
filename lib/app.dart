import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/features/home/presentation/home_screen.dart';
import 'package:movie_app/styles/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      title: 'Movies',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
