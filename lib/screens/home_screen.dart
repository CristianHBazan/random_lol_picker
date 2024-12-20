import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Random Champion", style: TextStyle(color: Colors.white)),
            IconButton(
                onPressed: () {Navigator.pushNamed(context, '/about');},
                icon: const CircleAvatar(
                    child: Text("?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                )
            )
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/charge');
                },
                child: Column(
                  children: [
                    const Text("Give me a random champion"),
                    Text(String.fromCharCode(0x1F3B2) + String.fromCharCode(0x1F300) + String.fromCharCode(0x1F3B0))
                  ],
                )
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/editPreferences');
                },
                child: Column(
                  children: [
                    const Text("Edit list of champs"),
                    Text(String.fromCharCode(0x1F527))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
