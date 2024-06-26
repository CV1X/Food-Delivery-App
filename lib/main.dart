import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'auth/login_or_register.dart';

void main() {
  runApp(MultiProvider(providers: [
    // THEME PROVIDER
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),

    // RESTAURANT PROVIDER
    ChangeNotifierProvider(
      create: (context) => Restaurant(),
      child: const MyApp(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: LoginOrRegisterState(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
