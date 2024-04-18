import 'package:flutter/material.dart';
import 'package:main_project/USER/Charity/Donate/Donate.dart';
import 'package:main_project/USER/Charity/Receive/recieve.dart';
import 'package:main_project/USER/Drawer/shotlist.dart';
import 'package:main_project/USER/chat.dart';
import 'package:main_project/USER/homepage/bottomnav.dart';

class Charityhomepage extends StatefulWidget {
  const Charityhomepage({super.key});

  @override
  State<Charityhomepage> createState() => _CharityhomepageState();
}

class _CharityhomepageState extends State<Charityhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myNav(
        index: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 0,
                    )));
          } else if (index == 1) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 1,
                    )));
          } else if (index == 2) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 2,
                    )));
          } else if (index == 3) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 3,
                    )));
          } else if (index == 4) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 4,
                    )));
          }
        },
      ),
      appBar: AppBar(
        title: const Text(
          'Charity',
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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {
                          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Shortlist()));
          }, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Chatpage(),
                ));
          }, icon: const Icon(Icons.chat_outlined))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            // color: const Color.fromARGB(255, 248, 0, 83),
            child: const Image(
              image: AssetImage(
                "images/Charity.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            color: const Color(0xff80754E),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                  height: 111,
                  width: 361,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Donate(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "DONATE",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 111,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            child: const Image(
                              image: AssetImage(
                                "images/donatepica.jpeg",
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
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                  height: 111,
                  width: 361,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Receive(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "RECEIVE",
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
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            child: const Image(
                              image: AssetImage(
                                "images/donatepicb.jpeg",
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
        ],
      ),
    );
  }
}
