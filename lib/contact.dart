import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  // Animated Container properties
  var color = Colors.yellow;
  var height = 100.0;
  var margin = 0.0;

  // Animated Icons properties
  bool isPlaying = false;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "car-image",
            child: Image.asset(
              "assets/bmw.jpeg",
            ),
          ),
          AnimatedContainer(
            duration: const Duration(
              milliseconds: 400,
            ),
            height: height,
            color: color,
            margin: EdgeInsets.all(margin),
          ),
          IconButton(
            onPressed: () {
              controller.forward();
            },
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: () {
              controller.reverse();
            },
            icon: const Icon(Icons.pause),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                color = Colors.red;
                height = 200.0;
                margin = 30.0;
              });
            },
            child: const Text("Change Color"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: AnimatedIcon(
          size: 40,
          icon: AnimatedIcons.play_pause,
          progress: controller,
        ),
        onPressed: () {
          if (isPlaying) {
            controller.reverse();
          } else {
            controller.forward();
          }

          setState(() {
            isPlaying = !isPlaying;
          });
        },
      ),
    );
  }
}
