import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/main.dart';
import 'package:yazilim_proje_yonetimi/widgets/text_filled.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  int radioDeger = 0;
  bool checkKontrol = false;
  var tfDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("Kullanici Kaydi"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFilled(yazi: "Ad", durum: false),
            TextFilled(yazi: "Soyad", durum: false),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: radioDeger,
                  onChanged: (int? veri) {
                    setState(() {
                      radioDeger = veri!;
                    });
                  },
                ),
                Row(
                  children: const [Icon(Icons.male), Text("Erkek")],
                ),
                Radio(
                  value: 2,
                  groupValue: radioDeger,
                  onChanged: (int? veri) {
                    setState(() {
                      radioDeger = veri!;
                    });
                  },
                ),
                Row(
                  children: const [Icon(Icons.female), Text("Kadin")],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5, top: 5, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Telefon Numarasi",
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  label: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.phone),
                ),
                maxLength: 11,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 5, right: 15),
              child: TextField(
                controller: tfDate,
                decoration: const InputDecoration(
                  hintText: "Dogum Tarihi",
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  label: Icon(Icons.date_range_outlined),
                  suffixIcon: Icon(Icons.date_range_rounded),
                ),
                keyboardType: TextInputType.datetime,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2025),
                  ).then((secilenTarih) {
                    setState(() {
                      tfDate.text =
                          "${secilenTarih!.day}/${secilenTarih.month}/${secilenTarih.year}";
                    });
                  });
                },
              ),
            ),
            CheckboxListTile(
              value: checkKontrol,
              onChanged: (bool? veri) {
                setState(() {
                  checkKontrol = veri!;
                });
              },
              title: const Text(
                "Kullanim Kosullarini ve sozlesmeyi Onayliyorum",
                style: TextStyle(fontSize: 15),
              ),
              tileColor: Colors.cyan[200],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),
                    ));
              },
              child: const Text(
                "Kayit ol",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
