import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Entredetailspage extends StatefulWidget {
  const Entredetailspage({super.key});

  @override
  State<Entredetailspage> createState() => _LogaState();
}

class _LogaState extends State<Entredetailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Details Page',
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
        backgroundColor: Color(0xffF9F8C9),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text("Bussiness name"),
                const SizedBox(height: 7),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Place"),
                const SizedBox(height: 7),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Short discription"),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Starting Price from"),
                const SizedBox(height: 7),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Image of product"),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20))),
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 50)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffFF4141))),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder:(context) => loginnotification()));
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}
