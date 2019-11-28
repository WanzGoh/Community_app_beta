import 'package:comunity_app/exemple.dart';
import 'package:comunity_app/pages/home_page.dart';
import 'package:comunity_app/pages/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hands.jpg'), fit: BoxFit.cover)),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 200.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Stack(
              children: <Widget>[
                ClipPath(
                  child: Container(
                    height: 350,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          // user input
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.black26,
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black26),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40.0))),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 16.0)),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black26,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black26),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40.0))),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 16.0)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                              top: 30.0, left: 30.0, right: 30.0),
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            color: Colors.purpleAccent.withOpacity(0.7),
                            onPressed: () =>{
                              Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>HomePage()))
                            },
                            elevation: 11,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
                  color: Colors.purpleAccent.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignUpPage()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white70, fontSize: 18.0),
                  ))
            ],
          )),
          SizedBox(
            height: 100,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[

                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                          child: RaisedButton(
                        child: Text("Facebook"),
                        textColor: Colors.white,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                      )),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: RaisedButton(
                        child: Text("Google"),
                        textColor: Colors.white,
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        onPressed: () {},
                      )),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
