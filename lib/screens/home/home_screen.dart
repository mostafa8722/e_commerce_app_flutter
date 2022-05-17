import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child:
    Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Ecommerce"),
        elevation: 0.0,
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(

              accountName: new Text("mostafa"), accountEmail: new Text("nazar"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                   backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,size: 18,),

                ),

              ),
              decoration: new BoxDecoration(
                color: Colors.red
              )
              ,),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("login/register"),
                leading: Icon(Icons.login),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("blog"),
                leading: Icon(Icons.login),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.login),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.quick_contacts_dialer_sharp),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.contact_support_outlined),
              ),
            ),


          ],
        ),
      ),
      body: HomeBody(),
    )
    );
  }
}