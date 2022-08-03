import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomCategoriesBar extends StatelessWidget {
  final String imageUrl;
  final String title;
  //final bool colorTitle;
  const CustomCategoriesBar({
    Key? key,
    required this.title,
    required this.imageUrl,
    //this.colorTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 40,
      margin: EdgeInsets.only(
        top: 20,
        right: 5,
      ),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 23,
            height: 17,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
