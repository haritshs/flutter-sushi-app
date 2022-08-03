import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButtonNavItem extends StatelessWidget {
  final String imageUrl;
  final String textTitle;
  const CustomButtonNavItem(
      {Key? key, required this.imageUrl, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Text(
          textTitle,
          style: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: regular,
          ),
        ),
      ],
    );
  }
}
