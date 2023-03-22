import 'package:flutter/material.dart';
import 'package:delivery/src/utils/my_colors.dart';
import 'package:delivery/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        children: [
          _imageBanner(),
          _textFieldEmail(),
          _textFieldPassword(),
          _buttonLogin(),
          _textDontHaveAccount(),
        ],
      ),
    ));
  }
}

Widget _textDontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'No tienes cuenta',
        style: TextStyle(color: MyColors.primaryColor),
      ),
      SizedBox(
        width: 9,
      ),
      Text(
        'Registrate',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: MyColors.primaryColor),
      ),
    ],
  );
}

Widget _buttonLogin() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
    child: ElevatedButton(
      onPressed: () {},
      child: Text('INGRESAR'),
      style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(vertical: 15)),
    ),
  );
}

Widget _imageBanner(){
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.12,
      bottom: MediaQuery.of(context).size.height * 0.15),
      child: Image.asset(
        'assets/img/delivery.png',
        height: 200,
        width: 200,
      ),
    );
}