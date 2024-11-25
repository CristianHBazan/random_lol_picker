import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_lol_picker/models/champion.dart';
import 'package:random_lol_picker/utils/champ_list.dart';

class RandomChamp extends StatelessWidget {
  const RandomChamp({super.key});

  @override
  Widget build(BuildContext context) {

    List<Champion> pickableChamps = [];
    for(int i=0; i< utils.champions.length; i++){

      Champion currentChampion = utils.champions[i];
      if(currentChampion.isPickable){

        pickableChamps.add(currentChampion);
      }
    }
    Random random = Random();

    Champion selectedChamp;
    if(pickableChamps.isNotEmpty){

      selectedChamp = pickableChamps[random.nextInt(pickableChamps.length)];
    } else{

      selectedChamp = Champion(0, "SelectChamps");
    }


    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/${selectedChamp.getName}.jpg"),
              fit: BoxFit.contain,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    color: Colors.black,
                    child: Text(selectedChamp.getName, style: const TextStyle(color: Colors.white,fontSize: 35), ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/charge');
                      },
                      child: Column(
                        children: [
                          const Text("Give me other champion"),
                          Text(String.fromCharCode(0x1F300))
                        ],
                      )
                  ),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
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
    );
  }
}
