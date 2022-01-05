import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'icon_btn_with_counter.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryCard(
                  icon: "assets/icons/Visi Misi.svg",
                  text: "Visi & Misi",
                  press: () =>
                      Navigator.pushNamed(context, ProfileScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/Tujuan Sasaran.svg",
                  text: "Tujuan & Sasaran ",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/Dasar Hukum.svg",
                  text: "Dasar Hukum",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/Master Plan.svg",
                  text: "Master Plan E-Gov",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryCard(
                  icon: "assets/icons/Arsitektur SPBE.svg",
                  text: "Arsitektur SPBE",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/TIK.svg",
                  text: "Infrastruktur",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/Skor Index.svg",
                  text: "Skor Index",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
              CategoryCard(
                  icon: "assets/icons/Kontak.svg",
                  text: "Kontak",
                  press: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName)),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(60),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(14)),
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenWidth(60),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
