import 'package:flutter/material.dart';

class offerpage extends StatefulWidget {
  const offerpage({super.key});

  @override
  State<offerpage> createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: const Text(
          'Offer',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                width: 500,
                // color: Colors.amber,
                child: Image(
                  image: AssetImage(
                    "images/offer.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 200,
                width: 500,
                // color: Colors.amber,
                child: Image(
                  image: AssetImage(
                    "images/offerr.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
