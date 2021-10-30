import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Utils/Routs.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png"),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 28.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(100, 30)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.HomeRoute);
                        },
                        child: Text(
                          "Login",
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
