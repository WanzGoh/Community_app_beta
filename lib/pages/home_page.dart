import 'package:comunity_app/pages/login_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Daniel Community",
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 25.0),
          ),
          backgroundColor: Colors.redAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                // in menu user interface
                accountName: Text(
                  "Daniel Goh",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Pacifico',
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.black45,
                          offset: Offset(1.5, 1.5),
                        )
                      ]),
                ),
                accountEmail: Text(
                  "daniel",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Pacifico',
                  ),
                ),
                currentAccountPicture: GestureDetector(
                  onTap: () => print("this is the current user"),
                  child: CircleAvatar(
                    // user image
                    backgroundImage: AssetImage('images/yuwanTestPic.jpeg'),
                  ),
                ),
//              decoration: BoxDecoration(//user background section
//                  image: DecorationImage(
//                      image: AssetImage('images/colorfriends.jpg'),
//                      fit: BoxFit.fill)),
              ),
              ListTile(
                //
                //menus
                onTap: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => HomePage()))
                },
                title: Text("Home"),
                trailing: Icon(Icons.home),
              ),
              ListTile(
                onTap: () => {},
                title: Text("Events"),
                trailing: Icon(Icons.event),
              ),
              ListTile(
                onTap: () => {},
                title: Text("Housing"),
                trailing: Icon(Icons.beenhere),
              ),
              ListTile(
                onTap: () => {},
                title: Text("Job"),
                trailing: Icon(Icons.business_center),
              ),
              ListTile(
                onTap: () => {},
                title: Text("Q & A"),
                trailing: Icon(Icons.question_answer),
              ),
              ListTile(
                onTap: () => {},
                title: Text("Infomation"),
                trailing: Icon(Icons.info),
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.cancel),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/hands.jpg'), fit: BoxFit.cover)),
            child: Stack(children: <Widget>[
              ClipPath(
                  child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.white.withOpacity(0.7),
                ),
              )),
            ])));
  }
}
