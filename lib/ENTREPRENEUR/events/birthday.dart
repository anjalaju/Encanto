import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/catergories/cakes.dart';
import 'package:main_project/ENTREPRENEUR/catergories/cardmakers.dart';
import 'package:main_project/ENTREPRENEUR/catergories/catering.dart';
import 'package:main_project/ENTREPRENEUR/catergories/costumes.dart';
import 'package:main_project/ENTREPRENEUR/catergories/gifts.dart';
import 'package:main_project/ENTREPRENEUR/catergories/jewelleryandaccess.dart.dart';
import 'package:main_project/ENTREPRENEUR/catergories/makeupartist.dart';
import 'package:main_project/ENTREPRENEUR/catergories/mehndiartist.dart';
import 'package:main_project/ENTREPRENEUR/catergories/musicanddancr.dart';
import 'package:main_project/ENTREPRENEUR/catergories/photographers.dart';
import 'package:main_project/ENTREPRENEUR/catergories/planninganddecor.dart';
import 'package:main_project/ENTREPRENEUR/catergories/venues.dart';
import 'package:main_project/ENTREPRENEUR/events/birthdaylist.dart';
import 'package:main_project/ENTREPRENEUR/homepage/bottomnav.dart';



class Entrebirthday extends StatefulWidget {
  const Entrebirthday({super.key});

  @override
  State<Entrebirthday> createState() => _EntrebirthdayState();
}

class _EntrebirthdayState extends State<Entrebirthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(   bottomNavigationBar: EntremyNav(
        index: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Entrebottomnav(
                      indexnum: 0,
                    )));
          } else if (index == 1) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Entrebottomnav(
                      indexnum: 1,
                    )));
          }
        },
      ),


      appBar: AppBar(
        title: const Text(
          'Birthday',
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
        //  actions: [
        //   IconButton(onPressed: () {
        //        Navigator.of(context).push(MaterialPageRoute(
        //             builder: (context) => EntreChatpage(),
        //           ));
        //   }, icon: const Icon(Icons.chat_outlined))
        // ]
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
      
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: ethrebirthdaylist.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entravenuespage()));
                        break;
                      case 1:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrephotogrpage()));
                        break;
                      case 2:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrecateringpage()));
                        break;
                      case 3:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entreplanningpage()));
                        break;
                      case 4:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrejewellpage()));
                        break;
                      case 5:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entremkaeupspage()));
                        break;
                      case 6:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrecostumepage()));
                        break;
                      case 7:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entremehndipage()));
                        break;
                      case 8:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entregiftspage()));
                        break;
                      case 9:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrecakespage()));
                        break;
                      case 10:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entremusicpage()));
                        break;
                      case 11:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Entrecardpage()));
                        break;
                     
                      // Add more cases if needed for different index values
                    }
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    color: ethrebirthdaylist[index]["Color"],
                    // color: const Color.fromARGB(255, 248, 194, 168),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),

                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${ethrebirthdaylist[index]["Title"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              )
                              ,ethrebirthdaylist[index]["subtitle"]==null?Text(""):
                                Text(
                                "${ethrebirthdaylist[index]["subtitle"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(60)),
                          child: Image.asset(
                            "${ethrebirthdaylist[index]["Image"]}",
                            fit: BoxFit.fill,
                            height: 130,
                            width: 160,

                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),

    );
  }
}
