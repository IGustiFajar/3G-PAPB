import 'package:edutech/pages/page_dua.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './page_dua.dart';
import 'package:get/get.dart';

class PageTiga extends StatefulWidget {
  const PageTiga({super.key});

  @override
  State<PageTiga> createState() => _PageTigaState();
}

class _PageTigaState extends State<PageTiga> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'images/Thumbnail2.png',
                width: 320,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selamat datang 👋',
                  style: TextStyle(fontSize: 20, fontFamily: 'InterSemiBold'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan nama kamu disini',
                  labelText: 'Nama',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'InterRegular'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan e-mail kamu disini',
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'InterRegular'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Masukkan password kamu disini',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'InterRegular'),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_secureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    )),
                obscureText: _secureText,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.toNamed(RouteName.page_2);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PageDua();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  primary: Color.fromARGB(255, 62, 137, 99),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'InterSemiBold'),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
