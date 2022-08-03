import 'package:flutter/material.dart';
import 'package:flutter_food_order_app/ui/pages/detail_page.dart';

import '../../shared/theme.dart';

class CustomCategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String harga;
  final double rating;
  const CustomCategoriesCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.harga,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        width: 160,
        height: 190,
        margin: EdgeInsets.only(
          top: 20,
          right: 5,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSearchColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 88,
                    height: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            harga,
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
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
          ],
        ),
      ),
    );
  }
}
