import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/homepage/Entrepage.dart';
import 'package:main_project/ENTREPRENEUR/homepage/homepage.dart';

class Entrebottomnav extends StatefulWidget {
  int indexnum = 0;

  Entrebottomnav({super.key, required this.indexnum});

  @override
  State<Entrebottomnav> createState() => _EntrebottomnavState();
}

class _EntrebottomnavState extends State<Entrebottomnav> {
  final _pages = [
    const EntreHome(),
    const Entreentreprenuer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[widget.indexnum],
      bottomNavigationBar: EntremyNav(
        index: widget.indexnum,
        onTap: (index) {
          setState(() {
            widget.indexnum = index;
          });
        },
      ),
    );
  }
}

Widget EntremyNav({
  int? index,
  void Function(int)? onTap,
  selectedcolor,
}) {
  return BottomNavigationBar(
    showUnselectedLabels: true,
    currentIndex: index!,
    selectedItemColor: Colors.pink,
    unselectedItemColor: Colors.black,
    showSelectedLabels: true,
    onTap: onTap,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color(0xffB7B7B7)),
      BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Entrepreneur',
          backgroundColor: Color(0xffB7B7B7)),
    ],
  );
}
