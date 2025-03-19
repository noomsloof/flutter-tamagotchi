import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamagotchi/screens/home_screen.dart';
import 'package:tamagotchi/providers/PetProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PetProvider(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
