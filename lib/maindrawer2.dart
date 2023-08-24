import 'package:flutter/material.dart';

class SingleDrawerPage extends StatefulWidget {
  const SingleDrawerPage({super.key});

  @override
  State<SingleDrawerPage> createState() => _SingleDrawerPageState();
}

class _SingleDrawerPageState extends State<SingleDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
      ),
      // endDrawer: Drawer(),         belongs to right sdie
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text("Custom Header"),
            ),
            UserAccountsDrawerHeader(
              accountName: Text("Zahid"),
              accountEmail: Text("zahid@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Text("P")),
              otherAccountsPictures: [
                CircleAvatar(child: Text("P")),
              ],
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contacts"),
              trailing: Icon(Icons.contacts), //right side icon
              onTap: () => print("List tile tappped"),
              // enabled: true,
              selected: true,
            ),
          ],
        ),
      ),
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
