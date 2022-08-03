import 'package:flutter/material.dart';
import 'package:flutter_food_order_app/shared/theme.dart';
import 'package:flutter_food_order_app/ui/pages/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  },
                  child: Container(
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
                              image: AssetImage('assets/icons_arrow-left.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                            image: AssetImage('assets/icons_love.png'),
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

    Widget detailImage() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 188,
            height: 140,
            margin: EdgeInsets.only(top: 100, bottom: 90),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_sushi_salmon.png'),
              ),
            ),
          ),
        ],
      );
    }

    Widget detailItem() {
      return Container(
        width: 375,
        height: 200,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 30, top: 30),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salmon Sushi',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '30% Off',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      '4.6',
                      style: blackTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget customItem() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            height: 117,
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salmon Sushi',
                              style: blackTextStyle.copyWith(
                                  fontSize: 24, fontWeight: semiBold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '30% Off',
                                  style: redTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
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
                  margin: EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4,8',
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
          ),
        ],
      );
    }

    Widget description() {
      return Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Etiam eu turpis molestie, dictum est a, mattis \ntellus. Sed dignissim, metus nec fringilla accumsan, \nrisus sem sollicitudin lacus, ut interdum tellus elit \nsed risus.',
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget priceAndCount() {
      return Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      r'$18.00',
                      style: redTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 25,
              height: 25,
              margin: EdgeInsets.only(right: 9),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons_plus.png'),
                ),
              ),
            ),
            Text(
              '1',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              width: 25,
              height: 25,
              margin: EdgeInsets.only(left: 9, right: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons_minus.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonAdd() {
      return Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              width: 315,
              height: 60,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextButton(
                onPressed: (() {}),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryRedColor,
      body: ListView(
        children: [
          header(),
          detailImage(),
          customItem(),
          description(),
          priceAndCount(),
          buttonAdd(),
        ],
      ),
    );
  }
}
