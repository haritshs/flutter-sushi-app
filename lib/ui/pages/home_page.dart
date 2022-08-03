import 'package:flutter/material.dart';
import 'package:flutter_food_order_app/shared/theme.dart';
import 'package:flutter_food_order_app/ui/widgets/custom_categories_bar.dart';
import 'package:flutter_food_order_app/ui/widgets/custom_categories_card.dart';
import 'package:flutter_food_order_app/ui/widgets/custom_recomended_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 29,
                        height: 21,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/icons_text-align-left.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icons_location.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Surabaya',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 29,
                        height: 21,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons_bell.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget promotion() {
      return Container(
        width: double.infinity,
        height: 150,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
          bottom: 20,
        ),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_banner.png',
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get 30% Discount',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Grab it Fast',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 88,
                  width: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_udang.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchBox() {
      return Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        color: kWhiteColor,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: kSearchColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            hintText: 'Search items',
            hintStyle: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      );
    }

    Widget categoriesMenuBar() {
      return Container(
        margin: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Categories',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoriesBar(
                    title: 'Sushi',
                    imageUrl: 'assets/image_sushi_salmon.png',
                  ),
                  CustomCategoriesBar(
                    title: 'Ramen',
                    imageUrl: 'assets/image_ramen.png',
                  ),
                  CustomCategoriesBar(
                    title: 'Dango',
                    imageUrl: 'assets/image_dango.png',
                  ),
                  CustomCategoriesBar(
                    title: 'Sate',
                    imageUrl: 'assets/image_dango.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget categoriesMenu() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 30,
              bottom: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoriesCard(
                    imageUrl: 'assets/image_sushi_salmon.png',
                    title: 'Salmon Sushi',
                    harga: r'$18.00',
                    rating: (4.7),
                  ),
                  CustomCategoriesCard(
                    imageUrl: 'assets/image_sushi_udang.png',
                    title: 'Shrimp Sushi',
                    harga: r'$19.00',
                    rating: (4.6),
                  ),
                  CustomCategoriesCard(
                    imageUrl: 'assets/image_sushi_lobster.png',
                    title: 'Lobster Sushi',
                    harga: r'$21.00',
                    rating: (4.8),
                  ),
                  CustomCategoriesCard(
                    imageUrl: 'assets/image_sushi_keju.png',
                    title: 'Cheese Sushi',
                    harga: r'$22.00',
                    rating: (4.8),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget recomendedTile() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //margin: EdgeInsets.only(bottom: 5),
              child: Text(
                'Recomended',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
            CustomRecomendedTile(
              imageUrl: 'assets/image_salmon_roe.png',
              title: 'Salmon Roe Sushi',
              harga: r'$23.00',
              rating: (4.6),
            ),
            CustomRecomendedTile(
              imageUrl: 'assets/image_ramen.png',
              title: 'Chicken Ramen',
              harga: r'$21.00',
              rating: (4.8),
            ),
            CustomRecomendedTile(
              imageUrl: 'assets/image_dango.png',
              title: 'Dango',
              harga: r'$13.00',
              rating: (4.5),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        promotion(),
        searchBox(),
        categoriesMenuBar(),
        categoriesMenu(),
        recomendedTile(),
      ],
    );
  }
}
