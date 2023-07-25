import 'package:abs_ai_pet_design/core/pet_fixed_data.dart';
import 'package:abs_ai_pet_design/core/resources/color_manager.dart';
import 'package:abs_ai_pet_design/core/resources/values_manager.dart';
import 'package:abs_ai_pet_design/pet_model.dart';
import 'package:abs_ai_pet_design/presentation/components/pet_card.dart';
import 'package:flutter/material.dart';

class PetsLists extends StatefulWidget {
  const PetsLists({super.key, required this.currentPetList});
  final List<Pet> currentPetList;

  @override
  State<PetsLists> createState() => _PetsListsState();
}

class _PetsListsState extends State<PetsLists> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: AppPading.p10),
      decoration: BoxDecoration(color: ColorManager.darkGrey),
      child: Visibility(
        visible: widget.currentPetList.isNotEmpty,
        child: ListView.builder(
          itemCount: widget.currentPetList.length,

            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPading.p8,vertical: AppPading.p12),
                child: PetCard(pet: widget.currentPetList[index]),
              );
            }),
        replacement: Center(child: Text("Oops..No pets found with that name"),),
      ),
    );
  }
}
