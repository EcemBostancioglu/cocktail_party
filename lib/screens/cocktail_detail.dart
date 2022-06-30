import 'package:cocktail_party/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/cocktail.dart';

class CocktailDetails extends StatelessWidget {
  const CocktailDetails({Key? key,required this.cocktailDetails}) : super(key: key);
  final Cocktail cocktailDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true,
      appBar:AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left,size: 30,),
        ),
        backgroundColor: ColorConstants.transparent,
        elevation: 0,
      ) ,
      body: Column(
        children: [
          Hero(
              tag: "cocktail-#${cocktailDetails.strDrinkThumb}",
              child: Image.network(cocktailDetails.strDrinkThumb.toString()))
        ],
      ),

    );
  }
}
