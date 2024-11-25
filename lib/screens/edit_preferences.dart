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
        title: const Text("Preferences", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),
      body: Scrollbar(
        controller: controller,
        thickness: 20.0,
        thumbVisibility: true,
        child: ListView.builder(
          controller: controller,
          itemCount: utils.getChamps().length,
          itemBuilder: (BuildContext context, int index) {
        
            final champ = utils.getChamps()[index];
        
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
