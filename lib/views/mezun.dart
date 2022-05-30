import 'package:flutter/material.dart';

class Mezun extends StatelessWidget {
  const Mezun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mezun Oldukk'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
                placeholder: "assets/images/loading-buffering.gif",
                image:
                    "https://c.tenor.com/jfQegf6gDZQAAAAC/mezun-kep-atmak.gif"),
          ],
        ),
      ),
    );
  }
}
