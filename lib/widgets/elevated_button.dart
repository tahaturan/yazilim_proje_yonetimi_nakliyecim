import 'package:flutter/material.dart';

class ElevatedButtonKisa extends StatefulWidget {
  String yazi;
  ElevatedButtonKisa({Key? key, required this.yazi}) : super(key: key);

  @override
  State<ElevatedButtonKisa> createState() => _ElevatedButtonKisaState();
}

class _ElevatedButtonKisaState extends State<ElevatedButtonKisa> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.double_arrow_sharp),
          Text(widget.yazi),
          const Icon(Icons.verified_user),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey,
        onPrimary: Colors.amber,
      ),
    );
  }
}
