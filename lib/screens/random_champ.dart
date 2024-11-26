import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_lol_picker/models/champion.dart';
import 'package:random_lol_picker/utils/champ_list.dart';

class RandomChamp extends StatelessWidget {
  const RandomChamp({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    List<Champion> pickableChamps = [];
    for(int i=0; i< Utils.champions.length; i++){

      Champion currentChampion = Utils.champions[i];
      if(currentChampion.isPickable){

        pickableChamps.add(currentChampion);
      }
    }
    Random random = Random();

    Champion selectedChamp;
    if(pickableChamps.isNotEmpty){

      selectedChamp = pickableChamps[random.nextInt(pickableChamps.length)];
    } else{

      selectedChamp = Champion(0, "Select any Champ");
    }


    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: screenHeight,
              child: Center(
                child: Image(
                  image: AssetImage(selectedChamp.getName != "Select any Champ" ? "assets/images/${selectedChamp.getName}.jpg" : "assets/images/${selectedChamp.getName}.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight-10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      color: Colors.black,
                      child: Text(selectedChamp.getName, style: const TextStyle(color: Colors.white,fontSize: 35), ),
                    ),
                  ),
                  const SizedBox( height: 10,),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/charge');
                        },
                        child: Column(
                          children: [
                            const Text("Give me other champion"),
                            Text(String.fromCharCode(0x1F300))
                          ],
                        )
                    ),
                  ),
                  const SizedBox( height: 10,),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/');
                        },
                        child: Column(
                          children: [
                            const Text("Return to start"),
                            Text(String.fromCharCode(0x1F519))
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
