import 'package:flutter/material.dart';
import 'package:main_project/USER/Drawer/shotlist.dart';
import 'package:main_project/USER/chat.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
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
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => const Shortlist()));
        //       },
        //       icon: const Icon(Icons.favorite)),
        //   IconButton(
        //       onPressed: () {
        //         Navigator.of(context).push(MaterialPageRoute(
        //           builder: (context) => Chatpage(),
        //         ));
        //       },
        //       icon: const Icon(Icons.chat_outlined))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 91,
                  child: CircleAvatar(
                    radius: 87,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Anjal",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 1.5,
                      horizontal: 5,
                    ),
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Column(
                      children: [
                        Text("Edit"),
                        Icon(
                          Icons.edit,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mobile number"),
                  SizedBox(height: 7),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: '7994413795',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Text("Email ID"),
                  SizedBox(height: 7),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: 'anjalkoranath@gmail.com',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Text("Place"),
                  SizedBox(height: 7),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: 'Perinthalmanna',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Text("Age"),
                  SizedBox(height: 7),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: '23',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
