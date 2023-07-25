import 'package:abs_ai_pet_design/core/resources/values_manager.dart';
import 'package:abs_ai_pet_design/presentation/components/pets_list.dart';
import 'package:flutter/material.dart';

import '../core/pet_fixed_data.dart';
import '../pet_model.dart';
import 'components/search_text_field.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  final TextEditingController searchCtrl=TextEditingController();
  List<Pet>currentPets=[];

  @override
  void initState() {
    currentPets=petList;
    super.initState();
  }
  @override
  void dispose() {
    searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight =MediaQuery.of(context).size.height;

    return  Scaffold(
      appBar: AppBar(title: Text("Pet Market",style: Theme.of(context).textTheme.displayLarge,),toolbarHeight: screenHeight*.1,),

    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPading.p14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPading.p20),
            child: SearchTextField(searchCtrl: searchCtrl,searchedPets: currentPets,
            onValue: (value){
              if(value.trim().isNotEmpty){
                setState(() {
                  currentPets=petList.where((element) => element.type.toLowerCase().startsWith(value.toLowerCase())).toList();
                });
              }else{
                setState(() {
                  currentPets=petList;
                });
              }

            },
            ),
          ),
          Expanded(child: PetsLists(currentPetList: currentPets,))
        ],
      ),
    ),
    );
  }
}

