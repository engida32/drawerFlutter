import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Drawer',
    home: drawer(),
  ));
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer "),
        bottomOpacity: 3,
        backgroundColor: Colors.pinkAccent,
      ),
      
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromRGBO(95, 11, 54, 0.85),
              Colors.pinkAccent,
              Colors.teal
            ])),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                    elevation: 422,
                    child:
                        Image.asset('image/Admin.jpg', width: 100, height: 100),
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          CustomWidget(Icons.person, 'Profile', () => {}),
          CustomWidget(Icons.notifications, 'Notification', () => {}),
          CustomWidget(Icons.settings, 'Setting', () => {}),
          CustomWidget(Icons.lock, 'Logout', () => {}),
        ],
      )),
      
    );
  }
}

class CustomWidget extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomWidget(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          
          splashColor: Colors.orangeAccent,
          onTap: () {},
          child: Container(
            height: 50,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
