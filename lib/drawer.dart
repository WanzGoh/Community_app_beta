import 'package:flutter/material.dart';
//import 'package:flutter_ui_challenges/src/utils/oval-right-clipper.dart';

class LightDrawerPage extends StatelessWidget {
  static final String path = "lib/drawer.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Ligh Drawer Navigation'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      body:Stack(fit: StackFit.expand, children: <Widget>[
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
      ]),
    );
  }



  _buildDrawer() {
    return ClipPath(

      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/yuwanTestPic.jpeg')
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "erika costell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@erika07",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "My profile"),
                  _buildDivider(),
                  _buildRow(Icons.message, "Messages", showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Notifications",
                      showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact us"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}

class OvalRightBorderClipper {
}