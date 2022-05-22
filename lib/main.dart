import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/views/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nakliyecim'),
          backgroundColor: Colors.blue[300],
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
