import 'package:flutter/material.dart';
import 'package:workshopapp/contact.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: const Text("My Car"),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // increment
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.green,
        icon: const Icon(Icons.add),
        label: const Text("Increment"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "car-image",
            child: Image.asset(
              "assets/bmw.jpeg",
              width: 200,
            ),
          ),
          ListTile(
            title: Center(
              child: Text(
                "BMWs I want $count",
                style: GoogleFonts.dancingScript(
                  fontSize: 40,
                ),
              ),
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
                  builder: (context) => const DetailsPage(),
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
          ListTile(
            title: ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
          ),
          ListTile(
            title: TextButton(
              child: const Text("Add To Cart"),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/bmw.jpeg",
              ),
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
