import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduTech',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/Thumbnail.png',
                  width: 320,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Selamat Datang di Girjo',
                  style: TextStyle(fontSize: 25, fontFamily: 'InterSemiBold'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukkan e-mail kamu disini',
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'InterRegular'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukkan password disini',
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'InterRegular'),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(_secureText
                            ? Icons.remove_red_eye
                            : Icons.security),
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
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  color: Color.fromARGB(255, 62, 137, 99),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
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
                  height: 15,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Belum Memiliki Akun? ',
                    style: TextStyle(fontSize: 10),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Daftar Sekarang',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'InterSemiBold')),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
