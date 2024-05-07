import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:main_project/USER/Charity/Homepage.dart';
import 'package:main_project/USER/Drawer/Revieww.dart';
import 'package:main_project/USER/Drawer/Settings.dart';
import 'package:main_project/USER/Drawer/about.dart';
import 'package:main_project/USER/Drawer/complaint.dart';
import 'package:main_project/USER/chat.dart';
import 'package:main_project/USER/events/eventpage.dart';
import 'package:main_project/USER/Drawer/shotlist.dart';
import 'package:main_project/USER/formscreen/loginpage.dart';
import 'package:main_project/USER/formscreen/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String id = _auth.currentUser!.uid;
    return Scaffold(
      drawer: Drawer(
          backgroundColor: const Color(0xff6C6974),
          child: StreamBuilder(
              stream: _firestore.collection('firebase').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  ); // Or any other loading indicator
                }

                final data = snapshot.data!.docs.first;

                return ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    //  CircleAvatar(
                    //   radius: 60,
                    //   backgroundImage: AssetImage(
                    //     "images/profile.jpg",
                    //   ),
                    // ),

                    Center(
                      child: InkWell(
                        onTap: () {
                          _showImagePickerBottomSheet(context);
                        },
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey
                              // border: Border.all(),
                              // borderRadius: BorderRadius.circular(
                              //     15), // Adjust the radius as needed
                              ),
                          child: _imageFile != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.file(
                                    _imageFile!,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      '${_auth.currentUser!.email}',
                      style: const TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    )),
                    const SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.festival,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Vendor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const eventpage(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Settingpage(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.favorite,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Favourate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Shortlist(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.menu_book_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'About us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Aboutus(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.edit_note,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Complaints',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Complaint(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.edit_calendar,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Reviews',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Reviews(),
                        ));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                actionsAlignment: MainAxisAlignment.spaceEvenly,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                title: const Center(
                                    child: Column(
                                  children: [
                                    Text(
                                      "Logout",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Are You Sure?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                                actions: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.indigo),
                                      ),
                                      style: TextButton.styleFrom(
                                          elevation: 5,
                                          minimumSize: const Size(128, 46),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ))),
                                  ElevatedButton(
                                      onPressed: () async {
                                        SharedPreferences preferences =
                                            await SharedPreferences
                                                .getInstance();

                                        // _auth.signOut().then((value) =>Navigator.of(context).push(MaterialPageRoute(
                                        //   builder: (context) => const loginpage(),
                                        // )) );

                                        await _auth.signOut().then(
                                              (value) =>
                                                  Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      welcome(),
                                                ),
                                              ),
                                            );
                                        log('signout succes');
                                        preferences.clear();
                                        log('logout success');
                                      },
                                      child: const Text(
                                        "Yes",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      style: TextButton.styleFrom(
                                          elevation: 5,
                                          minimumSize: const Size(128, 46),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ))),
                                ]);
                          },
                        );
                      },
                    ),
                    const Divider(),
                  ],
                );
              })),
      appBar: AppBar(
        title: const Text(
          'Home',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: const Color.fromARGB(255, 248, 0, 83),
              child: const Center(
                child: Image(
                  image: AssetImage(
                    "images/logo.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const eventpage(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Events",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                        child: const Image(
                          image: AssetImage(
                            "images/Mainevent.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Charityhomepage(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Charity",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red),
                        child: const Image(
                          image: AssetImage(
                            "images/Charity.jpeg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  File? _imageFile;
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    } else {}
  }

  void _showImagePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.camera,
                  color: Colors.indigo,
                ),
                title: Text(
                  'Take a photo',
                  style: TextStyle(color: Colors.indigo),
                ),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library, color: Colors.indigo),
                title: Text(
                  'Choose from gallery',
                  style: TextStyle(color: Colors.indigo),
                ),
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
