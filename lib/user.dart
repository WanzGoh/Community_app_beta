import 'package:flutter/material.dart';
import 'package:image/image.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange.shade400,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>))
              },
            )
          ],
        ),
        backgroundColor: Colors.deepOrange.shade400,
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/hands.jpg'),
                      fit: BoxFit.cover))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/yuwanTestPic.jpeg'),
              ),
              Text(
                "Yuwan Goh",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold,
                ),
              ), //name
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.grey.shade300,
                ),
              ),
              Card(
                  color: Colors.grey.shade200,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25.0,
                      color: Colors.teal.shade500,
                    ),
                    title: Text(
                      "+1 236 865 0512",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                      ),
                    ),
                  )), //phone number container
              Card(
                  color: Colors.grey.shade200,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 25.0,
                      color: Colors.teal.shade500,
                    ),
                    title: Text(
                      "danielgo512@gmail.com",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                      ),
                    ),
                  ))
            ],
          ),
        ]));
  }
}
