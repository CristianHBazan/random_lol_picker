import 'package:flutter/material.dart';

class ChargeScreen extends StatefulWidget {
  const ChargeScreen({super.key});

  @override
  State<ChargeScreen> createState() => _ChargeScreenState();
}

class _ChargeScreenState extends State<ChargeScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, '/randomChamp');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 15,
                strokeAlign: 10,
              ),
              Text("Your champion is...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
            ],
          )),
    );
  }
}
