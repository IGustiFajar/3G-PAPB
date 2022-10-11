import 'package:edutech/pages/BerandaPage.dart';
// import 'package:edutech/providers/auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BerandaPage.dart';
import 'SignUpPage.dart';
import 'package:get/get.dart';
// import 'package:flutter/gestures.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth.dart';

const users = const {
  'igusti@gmail.com': 'gusti123',
  'gesa@gmail.com': 'glen123'
};

class PageUtama extends StatefulWidget {
  const PageUtama({super.key});

  @override
  State<PageUtama> createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
  // Buat Variable string email dan password ketika value disimpan
  // late String emailInput;
  // late String passInput;

  // // buat key untuk fform

  // // Method untuk cekInput pada saat tombol login ditekan
  // cekInput() {
  //   final form = _formKey.currentState;
  //   if (form.validate()) {
  //     form.save();
  //     return true;
  //   }

  //   return null;
  // }

  // // method proses login
  // void prosesLogin() {
  //   try {
  //     if (cekInput()) {
  //       print(emailInput);
  //       print(passInput);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  final _formkey = GlobalKey<FormState>();
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: (isLandscape)
            ? Column(
                children: [
                  SizedBox(
                    height: bodyHeight * 0.02,
                  ),
                  Image.asset(
                    'images/Thumbnail.png',
                    height: bodyHeight * 0.3,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.001,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selamat Datang 👋',
                      style:
                          TextStyle(fontSize: 14, fontFamily: 'InterSemiBold'),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.01,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.1,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan e-mail kamu disini',
                        labelText: 'E-mail',
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'InterRegular'),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.01,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.1,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Masukkan password kamu disini',
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'InterRegular'),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock_outline_rounded),
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
                  ),
                  SizedBox(
                    height: bodyHeight * 0.03,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lupa Password?',
                      style:
                          TextStyle(fontSize: 12, fontFamily: 'InterRegular'),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.05,
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
                      primary: Color.fromARGB(255, 62, 137, 99),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      fixedSize: Size(690, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'InterSemiBold'),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Belum memiliki akun?',
                        style:
                            TextStyle(fontFamily: "InterRegular", fontSize: 12),
                      ),
                      TextButton(
                        child: const Text(
                          'Daftar sekarang',
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageTiga()),
                          );
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              )
            : Column(
                children: [
                  SizedBox(
                    height: bodyHeight * 0.1,
                  ),
                  Image.asset(
                    'images/Thumbnail.png',
                    width: 320,
                    height: 200,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.03,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selamat Datang 👋',
                      style:
                          TextStyle(fontSize: 20, fontFamily: 'InterSemiBold'),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.02,
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
                    height: bodyHeight * 0.03,
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
                        prefixIcon: Icon(Icons.lock_outline_rounded),
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
                    height: bodyHeight * 0.01,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lupa Password?',
                      style:
                          TextStyle(fontSize: 12, fontFamily: 'InterRegular'),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.03,
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
                        fixedSize: Size(350, 50),
                        primary: Color.fromARGB(255, 62, 137, 99)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'InterSemiBold'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.03,
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Belum memiliki akun?',
                        style:
                            TextStyle(fontFamily: "InterRegular", fontSize: 14),
                      ),
                      TextButton(
                        child: const Text(
                          'Daftar sekarang',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageTiga()),
                          );
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
      ),
    );
  }
}
