import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/Entrechat.dart';
import 'package:main_project/ENTREPRENEUR/catogories2/bridalwear/BridalLehengas.dart';
import 'package:main_project/ENTREPRENEUR/catogories2/bridalwear/Kanjeevaram.dart';
import 'package:main_project/ENTREPRENEUR/catogories2/bridalwear/WeddingGowns.dart';
import 'package:main_project/ENTREPRENEUR/homepage/bottomnav.dart';


class Entrebridwearpage extends StatefulWidget {
  const Entrebridwearpage({super.key});

  @override
  State<Entrebridwearpage> createState() => _EntrebridwearpageState();
}

class _EntrebridwearpageState extends State<Entrebridwearpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: EntremyNav(
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
          'Bridal wear and acce..',
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
         actions: [
 
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EntreChatpage(),
                  ));
          }, icon: const Icon(Icons.chat_outlined))
        ]
      ),
      backgroundColor: Color(0xccD9C2A7),

body:

 Column(

  children: [
    SizedBox(
      height: 60,
    ),


Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Column(
    children: [
      Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: ListTile(
                            title: Text("Bridal Lehengas",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                         
                            textColor: Color.fromARGB(255, 0, 0, 0),
                            leading: Icon(Icons.library_books_outlined),
                            iconColor: Color.fromRGBO(0, 0, 0, 1),
                           
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => Entreplehanka()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListTile(
                        title: Text("Kanjeevaram / Silk Sarees ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                     
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        leading: Icon(Icons.library_books_outlined),
                        iconColor: Color.fromRGBO(0, 0, 0, 1),
                       
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => Entrepkanjee()));
                        },
                      ),
                    )
                  ],
                ),
              ),

    SizedBox(
                    height: 10,
                  ),
                  Card(
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListTile(
                        title: Text("Wedding Gowns",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                     
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        leading: Icon(Icons.library_books_outlined),
                        iconColor: Color.fromRGBO(0, 0, 0, 1),
                       
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => Entrepgouns()));
                        },
                      ),
                    )
                  ],
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