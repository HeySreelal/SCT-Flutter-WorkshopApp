import 'package:flutter/material.dart';
import 'package:workshopapp/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // A count variable

  int count = 0;

  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // increment
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/bmw.jpeg",
            fit: BoxFit.fitWidth,
          ),
          ListTile(
            title: Center(
              child: Text("BMWs I want $count"),
            ),
          ),
          ListTile(
            title: const Text("Open Details"),
            leading: const Icon(Icons.chat),
            onTap: () {
              Navigator.push(
                // the current context
                context,

                // the page we're navigating to
                MaterialPageRoute(
                  builder: (context) => const ContactPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Book A Ride"),
            leading: const Icon(Icons.car_rental),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Favourite Models"),
            leading: const Icon(Icons.favorite),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset("assets/bmw.jpeg"),
            ),
            ListTile(
              title: const Text("New Chat"),
              leading: const Icon(Icons.chat),
              onTap: () {},
            ),
            ListTile(
              title: const Text("New Group"),
              leading: const Icon(Icons.people),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Saved Messages"),
              leading: const Icon(Icons.save_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
