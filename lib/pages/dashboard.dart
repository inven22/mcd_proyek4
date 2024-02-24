import 'package:flutter/material.dart';
import 'package:mcd/constants.dart';
import 'package:mcd/supplemental/main_screen.dart';
import 'package:mcd/main.dart';

void main() {
  runApp(const MyApp());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}