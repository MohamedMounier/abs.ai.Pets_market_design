import 'package:abs_ai_pet_design/core/resources/assets_manager.dart';
import 'package:abs_ai_pet_design/core/resources/color_manager.dart';
import 'package:abs_ai_pet_design/core/resources/size_config.dart';
import 'package:abs_ai_pet_design/core/resources/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../pet_model.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key, required this.pet});
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(AppPading.p12),

      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(20)
      ),
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CachedNetworkImage(
              // httpHeaders: {"user-Ager":"Mozilla/5.0"},
            width: SizeConfig.screenWidth(context)*.32,
            height: SizeConfig.screenHeight(context)*.15,
            errorWidget: (context,String,d)=>Center(child: Text("No Image for this pet"),),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
            imageUrl: pet.imageUrl,
            placeholder: (context,String)=>Center(child: CircularProgressIndicator(color: ColorManager.orange,),),

            fadeInCurve: Curves.bounceInOut,

          ),
          SizedBox(width:SizeConfig.screenWidth(context)*.03 ,),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pet.name,style: Theme.of(context).textTheme.displayMedium,),
              SizedBox(height: AppSize.s10,),
              Text(pet.type,style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(height: AppSize.s40,),

              Row(
                children: [
                  Image.asset(AppImages.pawprintImg),
                  SizedBox(width: AppSize.s8,),
                  Text("Pet Love: ${pet.love}",style: Theme.of(context).textTheme.headlineSmall),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
