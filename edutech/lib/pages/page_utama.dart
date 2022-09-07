import 'package:edutech/pages/page_dua.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './page_dua.dart';

class PageUtama extends StatefulWidget {
  const PageUtama({super.key});

  @override
  State<PageUtama> createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
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
                  prefixIcon: Icon(Icons.person),
                ),
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PageDua();
                      },
                    ),
                  );
                },
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
    );
  }
}
