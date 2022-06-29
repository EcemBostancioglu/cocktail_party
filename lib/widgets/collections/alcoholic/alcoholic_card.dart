import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/color_constants.dart';


class AlcoholicCard extends StatelessWidget {
  const AlcoholicCard({Key? key,required this.alcoholicCocktail}) : super(key: key);
  final dynamic alcoholicCocktail;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
            child:Image.network(alcoholicCocktail.strDrinkThumb.toString(),));

  }



}
