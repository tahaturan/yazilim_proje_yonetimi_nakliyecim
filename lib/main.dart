import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/views/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yüki Nakliyat',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yüki'),
          backgroundColor: Colors.blue[300],
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
