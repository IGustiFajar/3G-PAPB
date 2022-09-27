import 'package:edutech/pages/page_dua.dart';
// import 'package:edutech/providers/auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './page_dua.dart';
import './page_tiga.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
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
  // Duration get loginTime => Duration(milliseconds: 2250);

  // Future<String> _authUserSignUp (LoginData data) {
  //   print('Name : ${data.name}, Password : ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     // if (!users.containsKey(data.name)) {
  //     //   return 'Username not exists';
  //     // }
  //     // if (!users.[data.name] != data.password) {
  //     //   return 'Password tidak sesuai';
  //     // }
  //     // return null;

  //   Provider.of<Auth>(context, listen: false).signup(data.name, data.password);
  //   return null;
  //   });

  // }
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
                'images/Thumbnail.png',
                width: 320,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selamat Datang 👋',
                  style: TextStyle(fontSize: 20, fontFamily: 'InterSemiBold'),
                ),
              ),
              SizedBox(
                height: 20,
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
                // validator: (value){

                // },
                // onLogin: _authUserSignUp;

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
                height: 10,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(fontSize: 10, fontFamily: 'InterRegular'),
                ),
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
                    fixedSize: Size(350, 50),
                    primary: Color.fromARGB(255, 62, 137, 99)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'InterSemiBold'),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Belum memiliki akun?'),
                  ElevatedButton(
                    onPressed: () {
                      // Get.toNamed(RouteName.page_2);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return PageTiga();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      primary: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
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
              ),

              SizedBox(
                height: 12,
              ),

              // Text.rich(
              //   TextSpan(
              //     text: 'Belum Memiliki Akun? ',
              //     style: TextStyle(fontSize: 10),
              //     children: <TextSpan>[
              //       TextSpan(
              //           text: 'Daftar Sekarang',
              //           recognizer: new TapGestureRecognizer()
              //             ..onTap = () {
              //               return PageTiga();
              //             },
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.underline)),
              //       // can add more TextSpans here...
              //     ],
              //   ),
              // ),
            ],
          )),
    );
  }
}
