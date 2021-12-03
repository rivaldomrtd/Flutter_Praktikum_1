// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:praktikum_3/auth/register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        centerTitle: true,
        title: Text(
          'Login',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Login'),
              onPressed: () => doLogin(context),
            ),
            FlatButton(
              child: Text('Register'),
              onPressed: () => openRegister(context),
            ),
          ],
        ),
      ),
    );
  }

  void doLogin(BuildContext context) {
    // think of a real-world example where you do some API calls to log in a user and want to return the result of this API call. 1 is just a return value for this bug report.
    Navigator.of(context).pop(1);
  }

  void openRegister(BuildContext context) async {
    final result = await Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => RegisterPage()));
    Navigator.of(context).pop(result);
  }
}
