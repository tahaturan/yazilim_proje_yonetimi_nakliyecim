import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/views/sofor_kayit.dart';
import 'package:yazilim_proje_yonetimi/views/user_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("Kayit Secim"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
                placeholder: "assets/images/loading-buffering.gif",
                image:
                    "https://www.enakliyat.com.tr/Eblog/img/kucuk-kamyonet-nakliye.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserRegister(),
                        ));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.supervised_user_circle_outlined),
                      Text("Kullanici Kaydi"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SoforKayit(),
                        ));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.car_repair_outlined),
                      Text("Sofor Kaydi")
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
