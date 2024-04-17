import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Entreentreprenuer extends StatefulWidget {
  const Entreentreprenuer({super.key});

  @override
  State<Entreentreprenuer> createState() => _EntreentreprenuerState();
}

class _EntreentreprenuerState extends State<Entreentreprenuer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              thickness: 2,
              color: Colors.black,
              height: 1,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Center(
  child: Container(
    height: 100,
    width: 100,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
      border: Border.all(
        width: 2,
      )
    ),
    child: Stack( 
      children: [
        Center(
          child: Icon(
            Icons.person,
            size: 50,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        Positioned(
          top: 50, 
          left: 60,
          right: 40, 
          child: IconButton(onPressed: () {
            
          }, icon: Icon(Icons.add),
          iconSize: 20,
            
            color: Color.fromARGB(255, 0, 0, 0),)
        ),
      ],
    ),
  ),
),

                Center(child: Text("Add profile Picture")),
                SizedBox(height: 10),
                Text("Business name"),
                SizedBox(height: 7),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text(
                            "Event Crafters",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          leading: Icon(Icons.apartment),
                          iconColor: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("Location"),
                SizedBox(height: 7),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text(
                            "Perinthalmanna",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          leading: Icon(Icons.location_on_sharp),
                          iconColor: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("Mobile Number"),
                SizedBox(height: 7),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text(
                            "7994413795",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          leading: Icon(Icons.call),
                          iconColor: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("Email"),
                SizedBox(height: 7),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text(
                            "anjalkoranath@gmail.com",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          leading: Icon(Icons.email),
                          iconColor: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("Password"),
                SizedBox(height: 7),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: Text(
                            "********",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          leading: Icon(Icons.lock),
                          iconColor: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
