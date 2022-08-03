import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomRecomendedTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String harga;
  final double rating;
  const CustomRecomendedTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.harga,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(
        top: 20,
        right: 30,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 58,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: kSearchColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'),
                              ),
                            ),
                          ),
                          Text(
                            rating.toString(),
                            style: blackTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  harga,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
