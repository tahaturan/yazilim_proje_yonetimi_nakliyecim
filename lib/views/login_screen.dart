import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/views/register_screen.dart';
import 'package:yazilim_proje_yonetimi/views/users_screen.dart';
import 'package:yazilim_proje_yonetimi/widgets/text_filled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInImage.assetNetwork(
              placeholder: "assets/images/loading-buffering.gif",
              image:
                  "https://ar-asnakliyat.com/wp-content/uploads/2021/02/istanbul-izmir-kamyonet-nakliye-360x180.jpg"),
          TextFilled(yazi: "Kullanici Adi", durum: false),
          TextFilled(yazi: "Sifre", durum: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserScreen()));
                },
                child: const Text("Giris"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                },
                child: const Text(
                  "Kayit",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
