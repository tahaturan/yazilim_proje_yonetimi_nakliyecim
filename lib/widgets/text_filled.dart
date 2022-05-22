import 'package:flutter/material.dart';

class TextFilled extends StatelessWidget {
  final String yazi;
  bool durum;
  TextFilled({Key? key, required this.yazi, required this.durum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5, right: 15),
      child: TextField(
        obscureText: durum,
        decoration: InputDecoration(
          hintText: yazi,
          filled: true,
          fillColor: Colors.white,
          icon: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.blue,
          ),
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
