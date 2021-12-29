import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.asset(
              //backgroundImage: AssetImage("assets/images/Logo.png"),
              "assets/images/Logo.png",
              width: 130
              // Icons.home,
              // size: 60,
              ),
          // Text("Home", style: new TextStyle(fontSize: 16.0)),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
            ),
          )
        ],
      ),
      // child: TextField(
      //   onChanged: (value) => print(value),
      //   decoration: InputDecoration(
      //       contentPadding: EdgeInsets.symmetric(
      //           horizontal: getProportionateScreenWidth(20),
      //           vertical: getProportionateScreenWidth(9)),
      //       border: InputBorder.none,
      //       focusedBorder: InputBorder.none,
      //       enabledBorder: InputBorder.none,
      //       hintText: "Search product",
      //       prefixIcon: Icon(Icons.search)),
      // ),
    );
  }
}
