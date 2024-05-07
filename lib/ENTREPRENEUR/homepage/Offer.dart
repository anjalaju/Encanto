import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/Entrechat.dart';

class Entreofferpage extends StatefulWidget {
  const Entreofferpage({super.key});

  @override
  State<Entreofferpage> createState() => _EntreofferpageState();
}

class _EntreofferpageState extends State<Entreofferpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xff496FF7)),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 50)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Color(0xff496FF7))),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Bookimgpage(),
                    // ));
                  },
                  child: const Row(
                    children: [
                      Text("Add your offer"),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.add),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
