import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Utils/Routs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool onclick = false;
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
                "Welcome $name",
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
                      onChanged: (Value) {
                        name = Value;
                        setState(() {});
                      },
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
                    InkWell(
                      onTap: () async {
                        setState(() {
                          onclick = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        alignment: Alignment.center,
                        height: 40,
                        width: onclick ? 60 : 140,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            // shape: onclick ? BoxShape.circle : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(onclick ? 40 : 10)),
                        child: onclick
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(minimumSize: Size(100, 30)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //     },
                    //     child: Text(
                    //       "Login",
                    //     ))
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
