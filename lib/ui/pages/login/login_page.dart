import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import '../../../common/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: Constants.appName,
      onLogin: (data) {
        return null;
      },
      onRecoverPassword: (msg) {
        return null;
      },
    );
  }
}
