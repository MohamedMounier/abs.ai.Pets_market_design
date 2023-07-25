import 'package:abs_ai_pet_design/core/pet_fixed_data.dart';
import 'package:abs_ai_pet_design/core/resources/assets_manager.dart';
import 'package:abs_ai_pet_design/pet_model.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
   SearchTextField({super.key, required this.searchedPets, required this.searchCtrl, required this.onValue});
  final TextEditingController searchCtrl;
  final Function(String)onValue;
  List<Pet>? searchedPets;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool isSearching=false;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onTap: (){
        setState(() {
          isSearching=true;
        });
      },
      onTapOutside: (val){
        setState(() {
          isSearching=false;
        });
      },
      controller: widget.searchCtrl,
      onChanged: widget.onValue,


      style:Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
      textAlign: isSearching?TextAlign.start:TextAlign.center,
      decoration: InputDecoration(
        hintText: "Search by pet type",

        prefixIcon: Image.asset(AppImages.search)
      ),




    );
  }
}
