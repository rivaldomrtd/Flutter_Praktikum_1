import 'package:flutter/material.dart';
import 'package:praktikum_3/auth/loginpage.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        centerTitle: true,
        title: Text(
          'Register',
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 60, right: 60),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/1.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
      /*
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Register'),
              onPressed: () => doRegister(context),
            ),
          ],
        ),
      ),
      */
    );
  }

  void doRegister(BuildContext context) {
    Navigator.of(context).pop(2);
  }

  void openLogin(BuildContext context) async {
    final result = await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
    Navigator.of(context).pop(result);
  }
}
