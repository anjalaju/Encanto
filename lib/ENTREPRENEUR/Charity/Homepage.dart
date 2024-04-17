import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/Charity/Donate/Donate.dart';

class Charityhomepage extends StatefulWidget {
  const Charityhomepage({super.key});

  @override
  State<Charityhomepage> createState() => _CharityhomepageState();
}

class _CharityhomepageState extends State<Charityhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 248, 0, 83),
              child: const Image(
                image: AssetImage(
                  "images/Charity.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 460,
              width: double.infinity,
              color: const Color(0xff80754E),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 150),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(20)),
                      height: 111,
                      width: 361,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EntreDonate(),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
