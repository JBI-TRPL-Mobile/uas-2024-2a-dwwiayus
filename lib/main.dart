import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/message_provider.dart';
import 'screens/home_screen.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessageProvider()..loadMessages()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
