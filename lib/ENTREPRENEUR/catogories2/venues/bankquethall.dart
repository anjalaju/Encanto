import 'package:flutter/material.dart';

class Entrepbankquet extends StatefulWidget {
  const Entrepbankquet({super.key});

  @override
  State<Entrepbankquet> createState() => _EntrepbankquetState();
}

class _EntrepbankquetState extends State<Entrepbankquet> {
  Color _iconColor = Colors.grey; // Initial color

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
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _iconColor = _iconColor == Colors.grey
                                    ? Colors.red
                                    : Colors.grey;
                              });
                            },
                            icon: Icon(Icons.favorite, color: _iconColor))
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
                            onPressed: () {},
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
                        onPressed: () {},
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
                      onPressed: () {},
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
}
