import 'package:delivery/src/login/login_controller.dart';
import 'package:delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();

  @override
  void initState() {
    super.initState();
    _con.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _lottieAnimation(),
                _textFieldEmail(),
                _textFieldPassword(),
                _buttonLogin(),
                _textDontHaveAccount()
              ],
            ),
          ),
          Positioned(
            child: _circleLogin(),
            top: -125,
            left: -125,
          ),
          Positioned(
            child: _textLogin(),
            top: 42,
            left: 16,
          ),
        ],
      ),
    ));
  }

  // Widget _imageBanner() {
  //   return Container(
  //     margin: EdgeInsets.only(
  //         top: MediaQuery.of(context).size.height * 0.12,
  //         bottom: MediaQuery.of(context).size.height * 0.15),
  //     child: Image.asset(
  //       'assets/img/delivery.png',
  //       height: 200,
  //       width: 200,
  //     ),
  //   );
  // }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Correo Electrónico',
            hintStyle: TextStyle(color: MyColors.primaryColorDart),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            hintStyle: TextStyle(color: MyColors.primaryColorDart),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )),
      ),
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
            backgroundColor: MyColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes Cuenta',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Registrate',
            style: TextStyle(
                color: MyColors.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _circleLogin() {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: MyColors.primaryColor),
    );
  }

  Widget _textLogin() {
    return Text(
      'LOGIN',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        fontFamily: 'NimbusSans',
      ),
    );
  }

  Widget _lottieAnimation() {
    return Container(
      margin: EdgeInsets.only(top: 100, bottom: 30),
      child: Lottie.asset(
          'assets/json/96365-delivery-service-delivery-man.json',
          width: 400,
          height: 250,
          fit: BoxFit.fill),
    );
  }
}
