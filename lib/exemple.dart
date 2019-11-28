import 'package:comunity_app/pages/login_Page.dart';
import 'package:flutter/material.dart';

class HomeExemple extends StatefulWidget {
  @override
  _HomeExempleState createState() => _HomeExempleState();
}

class _HomeExempleState  extends State<HomeExemple> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("home page"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              // in menu user interface
              accountName: Text(
                "Daniel Goh",
                style:
                TextStyle(fontSize: 20.0, fontFamily: 'Pacifico', shadows: [
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
              //menus
              onTap: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage()))},
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
              title:Text("Housing"),
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
      body: new Center(
        child: new Text("home pages"),
      ),
    );
  }
}