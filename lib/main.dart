import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Drawer')),
          body: Center(
            child: Text('Flutter Is hidden ',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(accountName: Text('Kawsar Ali'), accountEmail:Text('kawsar.ali.cse@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:AssetImage('assets/img.png'),
                  
                ),

                ),
                ListTile(
                  leading: Icon(Icons.mail), title: Text('Mail is'),
                  onTap: (){

                  },
                )
              ],

            ),
          ),
        ),
    );
  }
}