import 'package:flutter/material.dart';
import 'package:main_project/USER/catergories/bridalwearaccess.dart';
import 'package:main_project/USER/catergories/cakes.dart';
import 'package:main_project/USER/catergories/cardmakers.dart';
import 'package:main_project/USER/catergories/catering.dart';
import 'package:main_project/USER/catergories/gifts.dart';
import 'package:main_project/USER/catergories/jewelleryandaccess.dart.dart';
import 'package:main_project/USER/catergories/makeupartist.dart';
import 'package:main_project/USER/catergories/mehndiartist.dart';
import 'package:main_project/USER/catergories/musicanddancr.dart';
import 'package:main_project/USER/catergories/photographers.dart';
import 'package:main_project/USER/catergories/planninganddecor.dart';
import 'package:main_project/USER/catergories/preweddingshot.dart';
import 'package:main_project/USER/catergories/transportations.dart';
import 'package:main_project/USER/catergories/venues.dart';
import 'package:main_project/USER/events/mehndinightlist.dart';
import 'package:main_project/USER/homepage/bottomnav.dart';

class Mehndinightpage extends StatefulWidget {
  const Mehndinightpage({super.key});

  @override
  State<Mehndinightpage> createState() => _MehndinightpageState();
}

class _MehndinightpageState extends State<Mehndinightpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  bottomNavigationBar: myNav(
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
          }
           else if (index == 4) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => bottomnavipage(
                      indexnum: 4,
                    )));
          }
        },
      ),

appBar: AppBar(
        title: const Text(
          'Mehndi Night',
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
        //                   Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => const Shortlist()));
        //   }, icon: const Icon(Icons.favorite)),
        //   IconButton(onPressed: () {
        //      Navigator.of(context).push(MaterialPageRoute(
        //           builder: (context) => Chatpage(),
        //         ));
        //   }, icon: const Icon(Icons.chat_outlined))
        // ]
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
      
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: Mehndinightlist.length,
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
                            builder: (context) => const Venuespage()));
                        break;
                      case 1:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Photographerspage()));
                        break;
                      case 2:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Cateringpage()));
                        break;
                      case 3:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const planninganddecor()));
                        break;
                      case 4:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const jewelleryaccess()));
                        break;
                      case 5:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const makeupartist()));
                        break;
                      case 6:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Bridalwearandaccess()));
                        break;
                      case 7:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Mehndiartist()));
                        break;
                      case 8:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Transportationspage()));
                        break;
                      case 9:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Giftspage()));
                        break;
                      case 10:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Cakespage()));
                        break;
                      case 11:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const musicanddancepage()));
                        break;
                      case 12:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Cardmakerspage()));
                        break;
                      case 13:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Preweddingshoot()));
                        break;
                     
                      // Add more cases if needed for different index values
                    }
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    color: Mehndinightlist[index]["Color"],
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
                                "${Mehndinightlist[index]["Title"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              )
                              ,Mehndinightlist[index]["subtitle"]==null?Text(""):
                                Text(
                                "${Mehndinightlist[index]["subtitle"]}",
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
                            "${Mehndinightlist[index]["Image"]}",
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
