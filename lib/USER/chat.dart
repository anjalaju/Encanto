import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SUMANGALI Auditorium',
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
      
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffCCCACA),
                      borderRadius: BorderRadius.circular(10)),
                  height: 35,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hello"),
                         Text("2 40 am"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff949494),
                      borderRadius: BorderRadius.circular(10)),
                  height: 35,
                  width: 200,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hello"),
                           Text("2 40 am"),
                        ],
                      ),
                   ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
