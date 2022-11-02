import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DrawerUi",
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Drawer"),
       centerTitle: true,
       backgroundColor: Colors.green,
       ),
       drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/2.jpg"),
                    Positioned(
                      left: 90,
                      top: 30,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/3.jpg"),
                        radius: 50,
                      ),
                    ),
                    Positioned(
                      left:88,
                      top: 140,
                      child: Text("Orchid Agro", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)
                      ),

                      Positioned(
                      left:73,
                      top: 160,
                      child: Text("Mahir adnan", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26,fontStyle: FontStyle.italic),)
                      ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

               Divider(
                thickness: 1,
                color: Colors.green,
               ),

              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

               Divider(
                thickness: 1,
                color: Colors.green,
               ),
         
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              

              Divider(
                thickness: 1,
                color: Colors.green,
               ),

              ListTile(
                tileColor: Colors.red,
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              Divider(
                thickness: 1,
                color: Colors.green,
               ),


            ],
          )
        ),
       ),
       body: Container(
        height: double.infinity,
        width: double.infinity,
        child:Center(
          child: Column(
      
             children: [
              Image.asset("assets/3.jpg",height: 500,width: 500,),
             ],
          ),
        ),
        
       ),
    );
    
  }
}