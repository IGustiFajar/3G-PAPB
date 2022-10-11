import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';
// import './page_tiga.dart';
import '../providers/auth.dart';
import 'BerandaPage.dart';

const users = const {
  'igusti@gmail.com': 'gusti123',
  'gesa@gmail.com': 'glen123'
};

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUserSignUp(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      Provider.of<Auths>(context, listen: false)
          .signup(data.name, data.password);
      return "null";
      //   });
    });
  }

  Future<String> _authUserLogin(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      Provider.of<Auths>(context, listen: false)
          .signin(data.name, data.password);
      return "null";
      //   });
    });
  }

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return 'null';
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return 'hai';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'APSKIL',
      logo: 'images/logo.png',
      onLogin: _authUserLogin,
      // onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => BerandaPage(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
