import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskapp/constants.dart';

class CategoryCard extends StatelessWidget{

  const CategoryCard(
      { super.key ,
        required this.title,
        required this.svgSrc,
        required this.press,
      });

  // フィールド変数
  final String svgSrc;
  final String title;
  final Function press;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor,
              ),
            ],

        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Column(
              children: <Widget>[
                Spacer(),
                SvgPicture.asset(svgSrc),
                Spacer(),
                Text(title)
              ],
            ),
          ),
        ),
      ),
    );
  }
}