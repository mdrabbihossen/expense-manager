import 'package:expense_manager/utils/constants/app_colors.dart';
import 'package:expense_manager/views/cart_view/screen/cart_view_screen.dart';
import 'package:expense_manager/views/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
