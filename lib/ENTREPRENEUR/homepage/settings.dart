import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/Entrechat.dart';
import 'package:main_project/ENTREPRENEUR/formscreen/welcome.dart';
import 'package:main_project/ENTREPRENEUR/homepage/settingchange.dart';


class EntreSettingpage extends StatefulWidget {
  const EntreSettingpage({super.key});

  @override
  State<EntreSettingpage> createState() => _EntreSettingpageState();
}

class _EntreSettingpageState extends State<EntreSettingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
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
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(
              Icons.language,
              size: 30,
            ),
            title: Text(
              "Language",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //  onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => homepage(),
            //         ));

            //   },
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          const ListTile(
            leading: Icon(
              Icons.dark_mode,
              size: 30,
            ),
            title: Text(
              "Dark mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //  onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => homepage(),
            //         ));

            //   },
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(
              Icons.lock,
              size: 30,
            ),
            title: const Text(
              "Change password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EntreSettingchangepass(),
                  ));
            },
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: const Text(
              "Delete account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Entrewelcome(),
                  ));
            },
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
