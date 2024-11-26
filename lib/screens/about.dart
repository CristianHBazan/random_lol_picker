import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About app", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("This is an app for undecided LoL players: you select the champs you're unsure about, and luck decides for you ;)"),
              const SizedBox(height: 8),
              const Text("Developer: I am Cristian B. i make it app for you and all the undecided pro LoL players! if you like see more abuot my apps tap on QR code: "),
              const SizedBox(height: 8),
              IconButton(
                  onPressed: () async{
                    final Uri url = Uri.parse('https://crisbazan.github.io/Portfolio/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'No se pudo abrir el enlace: $url';
                    }
                  },
              icon: const Image(image: AssetImage("assets/images/QR.png")))
            ],
          ),
        ),
      ),
    );
  }
}
