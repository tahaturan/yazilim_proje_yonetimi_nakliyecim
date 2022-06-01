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
  var formKey = GlobalKey<FormState>();
  var tfKullacidiAdiKontrol = TextEditingController();
  var tfSifreKontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInImage.assetNetwork(
              placeholder: "assets/images/loading-buffering.gif",
              image:
                  "https://www.enakliyat.com.tr/Eblog/img/kucuk-kamyonet-nakliye.png"),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 2, left: 25, right: 25),
                  child: TextFormField(
                    controller: tfKullacidiAdiKontrol,
                    maxLength: 12,
                    decoration: const InputDecoration(
                      hintText: "Kullanici Adini Giriniz",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      labelText: "Kullanici Adi",
                      suffixIcon: Icon(Icons.account_box_rounded),
                      contentPadding: EdgeInsets.all(20),
                    ),
                    validator: (tfGirdisi) {
                      if (tfGirdisi!.isEmpty) {
                        return "Kullanici Adini Giriniz";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 2, left: 25, right: 25),
                  child: TextFormField(
                    controller: tfSifreKontrol,
                    maxLength: 12,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Sifrenizi Giriniz",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.key_rounded),
                      labelText: "Sifre",
                      suffixIcon: Icon(Icons.password),
                      contentPadding: EdgeInsets.all(20),
                    ),
                    validator: (tfGirdisi) {
                      if (tfGirdisi!.isEmpty) {
                        return "Lutfen Sifrenizi Giriniz";
                      }
                      if (tfGirdisi.length < 6) {
                        return "Sifreniz 6 Karakterden Kisa Olamaz";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  bool kontrolSonucu = formKey.currentState!.validate();
                  if (kontrolSonucu) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserScreen(),
                      ),
                    );
                    tfSifreKontrol.text = "";
                    tfKullacidiAdiKontrol.text = "";
                  }
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
                    ),
                  );
                  tfSifreKontrol.text = "";
                  tfKullacidiAdiKontrol.text = "";
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
