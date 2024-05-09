import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String id = _auth.currentUser!.uid;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

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
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back_ios_new,
        //   ),
        //   color: Colors.black,
        // ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                 StreamBuilder(
                  stream: _firestore.collection('firebase').doc(id).snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (!snapshot.hasData || snapshot.data == null) {
                      print('No data available');
                    }

                    DocumentSnapshot<Map<String, dynamic>> data =
                        snapshot.data!;
                    if (!data.exists) {
                     print('Document does not exist');
                    }

                    // Check if 'image' field exists and is not null in the document
                    if (!data.data()!.containsKey('image') ||
                        data.data()!['image'] == null) {
                      print('Image URL not found');
                    }

                    String imageUrl = data.data()!['image'];

                    return CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 91,
                      child: CircleAvatar(
                        radius: 87,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Text(
                  //   "Anjal",
                  //   style: TextStyle(
                  //     fontSize: 35,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  StreamBuilder(
                    stream: _firestore
                        .collection("firebase")
                        .where("Id", isEqualTo: _auth.currentUser!.uid)
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        final List<DocumentSnapshot> documents =
                            snapshot.data!.docs;
                        if (documents.isNotEmpty) {
                          final username = documents[0].get("User_Name");
                          if (username != null) {
                            return Text(
                              "$username",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          } else {
                            // Handle the case where username is null
                            return Text(
                              ",",
                              style: TextStyle(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            );
                          }
                        }
                      }
                      return CircularProgressIndicator(); // Placeholder for loading state
                    },
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mobile number"),
                  SizedBox(height: 7),
                  StreamBuilder(
                    stream: _firestore
                        .collection("firebase")
                        .where("Id", isEqualTo: _auth.currentUser!.uid)
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        final List<DocumentSnapshot> documents =
                            snapshot.data!.docs;
                        if (documents.isNotEmpty) {
                          final Mobile_No = documents[0].get("Mobile_No");
                          mobilecontroller.text = Mobile_No ?? "";
                        }
                      }
                      return TextField(
                        controller: mobilecontroller,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  Text("Email ID"),
                  SizedBox(height: 7),
                  StreamBuilder(
                    stream: _firestore
                        .collection("firebase")
                        .where("Id", isEqualTo: _auth.currentUser!.uid)
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        final List<DocumentSnapshot> documents =
                            snapshot.data!.docs;
                        if (documents.isNotEmpty) {
                          final Email = documents[0].get("Email");
                          emailcontroller.text = Email ?? "";
                        }
                      }
                      return TextField(
                        controller: emailcontroller,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
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
