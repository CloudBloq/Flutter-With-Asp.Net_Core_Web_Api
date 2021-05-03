
import 'package:flutter/material.dart';
import 'package:flutter_group_project/Screens/login_page.dart';
import 'package:flutter_group_project/Screens/signup_page.dart';

class FirebaseAuthFGP extends StatefulWidget {
  @override
  _FirebaseAuthFGPState createState() => _FirebaseAuthFGPState();
}

class _FirebaseAuthFGPState extends State<FirebaseAuthFGP> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: <Color>[
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
            stops: [ 0.0, 1.0 ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated)),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,           children: <Widget>[
                Image.asset('Assets/assets/fixit.png',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Text('Fix It',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.bold)
                ),
                Row(

                  children: <Widget>[
                    SizedBox(width: 20,),
                    Expanded(
                        child: MaterialButton(
                          color: Colors.orange,
                          splashColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),                      side: BorderSide(color: Colors.black)),
                          child: Text("Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                          onPressed: () => _pushPage(context, SignIn()),

                        )),
                    Expanded(
                        child: MaterialButton(
                          color: Colors.orange,
                          splashColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),                      side: BorderSide(color: Colors.black)),
                          child: Text("Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                             ),
                          ),
                          onPressed: () => _pushPage(context, Register()),
                        )),
                  ],
                ),
Center(
                child: Text('The reliable place to meet customers with technicians.',
                    style: TextStyle(

                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                )),
              ],
              ),
            ),    ));

  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}