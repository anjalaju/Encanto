import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:main_project/USER/booking/booking.dart';
import 'package:main_project/USER/chat.dart';
import 'package:url_launcher/url_launcher.dart';

class Bankquethall extends StatefulWidget {
  const Bankquethall({super.key});

  @override
  State<Bankquethall> createState() => _BankquethallState();
}

class _BankquethallState extends State<Bankquethall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Banquet Halls',
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xffD9D9D9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: ("  Search Venues..."),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 231,
                width: 350,
                child: const Image(
                  image: AssetImage(
                    "images/Banquet.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              RatingBar.builder(itemSize: 25,
                                 initialRating: 0,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                 itemBuilder: (context, _) => Icon(
                                   Icons.star,
                                   color: Colors.amber,
                                 ),
                                 onRatingUpdate: (rating) {
                                   print(rating);
                                 },
                               ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("poopalam , perinthalmanna"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("SUMANGALI Auditorium"),
                        // IconButton(
                        //     onPressed: () {
                        //       Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (context) => Shortlist(),
                        //       ));
                        //     },
                        //     icon: const Icon(Icons.favorite_border)
                        //     )
                        LikeButton(
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 30,
              );
            },
            onTap: (bool isLiked) {
              return Future.value(!isLiked);
            },
          ),
                      ],
                    ),
                    const Text("non veg"),
                    const Text("800 per plate"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Rental cost"),
                        OutlinedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    const Color(0xff496FF7)),
                                textStyle: MaterialStateProperty.all(
                                    const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(200, 50)),
                                side: MaterialStateProperty.all(
                                    const BorderSide(color: Color(0xff496FF7))),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Bookimgpage(),
                              ));
                            },
                            child: const Row(
                              children: [
                                Icon(Icons.message),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Book now"),
                              ],
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 20,
                        ),
                        Text(
                          "35000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Text("500-700 max")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                const Color(0xffFF004D)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                            minimumSize:
                                MaterialStateProperty.all(const Size(250, 50)),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Color(0xffFF004D))),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Chatpage(
                              name: 'Banquet Halls',
                            ),
                          ));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.message),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Message"),
                          ],
                        )),
                    OutlinedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xff63C336)),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        minimumSize:
                            MaterialStateProperty.all(const Size(30, 50)),
                        shape: MaterialStateProperty.all(
                          const CircleBorder(),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(color: Color(0xff63C336)),
                        ),
                      ),
                      onPressed: () {
                        _makePhoneCall('7025053483');
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.call),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
