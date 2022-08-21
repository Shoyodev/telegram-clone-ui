// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(0), children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.blue),
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('image/rohit.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Text(
                      "SHOYO",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Text(
                  " +91 985467805",
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
        ),
        const ListTile(
          leading: Icon(Icons.group),
          title: Text("New Group"),
        ),
        const ListTile(
          leading: Icon(Icons.person),
          title: Text("Contacts"),
        ),
        const ListTile(
          leading: Icon(Icons.call_sharp),
          title: Text("Calls"),
        ),
        const ListTile(
          leading: Icon(Icons.people_alt_outlined),
          title: Text("People Nearby"),
        ),
        const ListTile(
          leading: Icon(Icons.bookmark),
          title: Text("Saved Messages"),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        const Divider(
          thickness: 1,
        ),
        const ListTile(
          leading: Icon(Icons.person_add),
          title: Text("Invite Friends"),
        ),
        const ListTile(
          leading: Icon(Icons.question_mark_outlined),
          title: Text("Telegram Features"),
        ),
      ]),
    );
  }
}
