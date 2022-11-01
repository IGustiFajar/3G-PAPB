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
import 'package:firebase_auth/firebase_auth.dart';

const users = const {
  'igusti@gmail.com': 'gusti123',
  'gesa@gmail.com': 'glen123'
};

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String errorMessage = '';

  Future signIn() async {
    if (_formkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        errorMessage = '';
      } on FirebaseAuthException catch (error) {
        errorMessage = error.message!;
      }
      setState(() {});
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
      body: Form(
        key: _formkey,
        child: Padding(
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
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'InterSemiBold'),
                      ),
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
                        controller: _passwordController,
                        validator: validatePassword,
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
                        signIn();
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
                          style: TextStyle(
                              fontFamily: "InterRegular", fontSize: 12),
                        ),
                        TextButton(
                          child: const Text(
                            'Daftar sekarang',
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                          onPressed: () {
                            final data = Get.offAll(SignUpPage());
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
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'InterSemiBold'),
                      ),
                    ),
                    SizedBox(
                      height: bodyHeight * 0.02,
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: validateEmail,
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
                    TextFormField(
                      controller: _passwordController,
                      validator: validatePassword,
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
                    Center(
                      child: Text(errorMessage),
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
                        signIn();
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
                          style: TextStyle(
                              fontFamily: "InterRegular", fontSize: 14),
                        ),
                        TextButton(
                          child: const Text(
                            'Daftar sekarang',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          onPressed: () {
                            final data = Get.offAll(SignUpPage());
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

  // String pattern =
  //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  // RegExp regex = RegExp(pattern);
  // if (!regex.hasMatch(formPassword))
  //   return '''
  //     Password must be at least 8 characters,
  //     include an uppercase letter, number and symbol.
  //     ''';

  return null;
}
