import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main_project/ENTREPRENEUR/Charity/Donate/Donateaccessories.dart';
import 'package:main_project/ENTREPRENEUR/Charity/Donate/Donatedecoration.dart';
import 'package:main_project/ENTREPRENEUR/Charity/Donate/Donatedress.dart';
import 'package:main_project/ENTREPRENEUR/Charity/Donate/Donatejewellery.dart';


class EntreDonate extends StatefulWidget {
  const EntreDonate({super.key});

  @override
  State<EntreDonate> createState() => _EntreDonateState();
}

class _EntreDonateState extends State<EntreDonate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Donate',
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
        //   IconButton(onPressed: () {
        //        Navigator.of(context).push(MaterialPageRoute(
        //             builder: (context) => EntreChatpage(),
        //           ));
        //   }, icon: const Icon(Icons.chat_outlined))
        // ],
      ),
      backgroundColor: const Color(0xffF9F8C9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      "images/donatephoto.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EntreDonatedress(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white, border: Border.all()),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 55,
                                backgroundImage:
                                    AssetImage("images/Donatedress.jpg"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Dress")
                            ],
                          ),
                          height: 180,
                          width: 165,
                          
                        ),
                      ),
                      InkWell(
                        onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EntreDonatejewellery(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white, border: Border.all()),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 55,
                                backgroundImage:
                                    AssetImage("images/Donatejewell.jpg"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Jewellery")
                            ],
                          ),
                          height: 180,
                          width: 165,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EntreDonatedecoration(),));
                        },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 55,
                              backgroundImage:
                                  AssetImage("images/Donatedecor.jpg"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Decoration items")
                          ],
                        ),
                        height: 180,
                        width: 165,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EntreDonateaccessories(),));
                        },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 55,
                              backgroundImage:
                                  AssetImage("images/Donateaccesss.jpeg"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Other  Accessories")
                          ],
                        ),
                        height: 180,
                        width: 165,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
