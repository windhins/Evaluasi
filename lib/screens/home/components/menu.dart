import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon1": "assets/icons/Visi Misi.svg", "text1": "Visi & Misi"},
      {"icon2": "assets/icons/Tujuan Sasaran.svg", "text2": "Tujuan & Sasaran"},
      {"icon": "assets/icons/Dasar Hukum.svg", "text": "Dasar Hukum"},
      {"icon": "assets/icons/Master Plan.svg", "text": "Master Plan"},
      // {"icon": "assets/icons/Arsitektur SPBE.svg", "text": "Arsitektur SPBE"},
      // {"icon": "assets/icons/Evaluasi.svg", "text": "Evaluasi"},
      // {"icon": "assets/icons/Agenda Kegiatan.svg", "text": "Agenda Kegiatan"},
      // {"icon": "assets/icons/Dokumentasi.svg", "text": "Dokumentasi"},
      // {"icon": "assets/icons/TIK.svg", "text": "TIK"},
      // {"icon": "assets/icons/Kontak.svg", "text": "Kontak"},
    ];
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(30)),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(6.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.account_balance,
                          size: 60.0,
                        ),
                        Text("Home", style: new TextStyle(fontSize: 16.0))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
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
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
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
