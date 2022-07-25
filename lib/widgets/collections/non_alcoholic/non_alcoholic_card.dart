import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_party/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NonAlcoholicCard extends StatelessWidget {
  const NonAlcoholicCard({Key? key,required this.nonAlcoholicCocktail}) : super(key: key);
  final dynamic nonAlcoholicCocktail;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child:CachedNetworkImage(
            imageUrl:nonAlcoholicCocktail.strDrinkThumb,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context,url,error) =>const Center(child: Icon(Icons.error)),
          )),
        Positioned(
            left: 20,
            right: 20,
            bottom: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: BackdropFilter(
                filter:ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  width: 130.w,
                  height: 36.h,
                  decoration:const BoxDecoration(
                    color: ColorConstants.blurColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(nonAlcoholicCocktail.strDrink.toString(),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style:Theme.of(context).textTheme.headline5),
                  ),
                ),
              ),
            )
        )
      ]
    );
  }
}
