import 'package:flutter/material.dart';
import 'package:random_lol_picker/utils/champ_list.dart';

class EditPreferences extends StatefulWidget {
  const EditPreferences({super.key});

  @override
  State<EditPreferences> createState() => _EditPreferencesState();
}

class _EditPreferencesState extends State<EditPreferences> {

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Preferences", style: TextStyle(color: Colors.white),),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Utils.allPickable(false);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                  child: const Text("NO"),
                ),
                const SizedBox(width: 5,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Utils.allPickable(true);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                  child: const Text("YES"),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Scrollbar(
        controller: controller,
        thickness: 20.0,
        thumbVisibility: true,
        child: ListView.builder(
          controller: controller,
          itemCount: Utils.getChamps().length,
          itemBuilder: (BuildContext context, int index) {
        
            final champ = Utils.getChamps()[index];
        
          return Column(
            children: [
              const SizedBox(height: 5),
              ListTile(
                title: Text(champ.getName, style: const TextStyle(fontWeight: FontWeight.bold),),
                tileColor: champ.isPickable ? Colors.redAccent : Colors.lightBlueAccent,
                trailing: Container(
                  width: screenWidth/2,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                champ.isPickable = false;
                              });
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent
                            ),
                            child: const Text("NO")
                        ),
                        TextButton(
                            onPressed: () {
        
                              setState(() {
                                champ.isPickable = true;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.redAccent
                            ),
                            child: const Text("YES"),
                        )
                      ],
                    )),
                minVerticalPadding: 5,
              ),
            ],
          );
        },),
      ),
    );
  }
}
