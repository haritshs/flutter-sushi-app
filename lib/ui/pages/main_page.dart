import 'package:flutter/material.dart';
import 'package:flutter_food_order_app/ui/pages/home_page.dart';
import 'package:flutter_food_order_app/ui/widgets/custom_button_navigation_icon.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavItem(
                  imageUrl: 'assets/icons_home.png', textTitle: 'Home'),
              CustomButtonNavItem(
                  imageUrl: 'assets/icons_paper.png', textTitle: 'Transaction'),
              CustomButtonNavItem(
                  imageUrl: 'assets/icons_heart.png', textTitle: 'Saved'),
              CustomButtonNavItem(
                  imageUrl: 'assets/icons_person.png', textTitle: 'Profile'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
