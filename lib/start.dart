import 'package:comunity_app/user.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartState();
 
}


class _StartState extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>MaterialPageRoute(builder: (context) => UserPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_right, size: 50.0,),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage()));
            },
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(

            decoration:BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/colorfriends.jpg'), fit: BoxFit.cover, )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal:0.0),
                      ),
                      logoimages(),
//                      Padding(
//                        padding: EdgeInsets.only(top: 10.0),
//                      ),
                      Text(
                        "ITD Community",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Thank you for coming",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


}

class logoimages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('images/ITDCanada_Logo.png');
    Image image = Image(image: logo, width: 400.0, height: 150.0, );
    return Container(
      child: image,
    );
  }
}
