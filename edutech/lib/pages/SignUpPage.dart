import 'package:cool_alert/cool_alert.dart';
import 'package:edutech/pages/BerandaPage.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BerandaPage.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (_formkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: "Berhasil Membuat Akun!",
        );
      } on FirebaseAuthException catch (error) {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          text: 'Gagal Membuat Akun!' + error.message!,
        );
      }
      setState(() {});
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 4),
          child: (isLandscape)
              ? Column(
                  children: [
                    SizedBox(
                      height: bodyHeight * 0.1,
                    ),
                    Image.asset(
                      'images/Thumbnail2.png',
                      height: bodyHeight * 0.3,
                    ),
                    SizedBox(
                      height: bodyHeight * 0.001,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Selamat datang 👋',
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'InterSemiBold'),
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    SizedBox(
                      height: bodyHeight * 0.1,
                      child: TextFormField(
                        validator: validateEmail,
                        controller: _emailController,
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
                      child: TextFormField(
                        validator: validatePassword,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            hintText: 'Masukkan password kamu disini',
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
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
                    ),
                    // SizedBox(
                    //   height: bodyHeight * 0.1,
                    //   child: TextFormField(
                    //     controller: _confirmController,
                    //     decoration: InputDecoration(
                    //       hintText: 'Konfirmasi Passwordmu disini',
                    //       labelText: 'Konfirmasi Password',
                    //       labelStyle: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 12,
                    //           fontFamily: 'InterRegular'),
                    //       border: OutlineInputBorder(),
                    //       prefixIcon: Icon(Icons.person),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: bodyHeight * 0.01,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Get.toNamed(RouteName.page_2);
                        signUp();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(800, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        primary: Color.fromARGB(255, 62, 137, 99),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'InterSemiBold'),
                        ),
                      ),
                    ),
                    SizedBox(height: bodyHeight * 0.01),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Sudah memiliki akun?',
                          style: TextStyle(
                              fontFamily: "InterRegular", fontSize: 12),
                        ),
                        TextButton(
                          child: const Text(
                            'Masuk sekarang',
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                          onPressed: () {
                            final data = Get.offAll(LoginPage());
                            print(data);
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
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'InterSemiBold'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: validateEmail,
                      controller: _emailController,
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
                    TextFormField(
                      validator: validatePassword,
                      controller: _passwordController,
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
                        ),
                      ),
                      obscureText: _secureText,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // TextFormField(
                    //   controller: _confirmController,
                    //   decoration: InputDecoration(
                    //     hintText: 'Konfirmasi password kamu disini',
                    //     labelText: 'Konfirmasi Password',
                    //     labelStyle: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 15,
                    //         fontFamily: 'InterRegular'),
                    //     border: OutlineInputBorder(),
                    //     prefixIcon: Icon(Icons.lock),
                    //     suffixIcon: IconButton(
                    //       icon: Icon(_secureText
                    //           ? Icons.visibility
                    //           : Icons.visibility_off),
                    //       onPressed: () {
                    //         setState(() {
                    //           _secureText = !_secureText;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    //   obscureText: _secureText,
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Get.toNamed(RouteName.page_2);
                        signUp();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(350, 50),
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
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Sudah memiliki akun?',
                          style: TextStyle(
                              fontFamily: "InterRegular", fontSize: 14),
                        ),
                        TextButton(
                          child: const Text(
                            'Masuk sekarang',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          onPressed: () {
                            final data = Get.offAll(LoginPage());
                            print(data);
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return 'Alamat Email Harus Diisi!';

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail)) return 'Format Alamat Email Kamu Salah.';

  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty)
    return 'Password Harus Diisi!';

  String pattern = r'^(?=.*?[A-Z]).{8,}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formPassword))
    return '''
      Password minimal 8 karakter,
      Termasuk huruf kapital.
      ''';

  return null;
}
