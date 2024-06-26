import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FlutterCard(),
  ));
}

class FlutterCard extends StatefulWidget {
  const FlutterCard({super.key});
  @override
  State<FlutterCard> createState() => _FlutterCardState();
}

class _FlutterCardState extends State<FlutterCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        titleTextStyle: const TextStyle(color: Colors.white70),
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Flutter Card'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.add,
          color: Colors.white60,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                  letterSpacing: 2.0, color: Colors.grey),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Stephen_M.',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  letterSpacing: 2.0, color: Colors.grey),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'email@domain.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
