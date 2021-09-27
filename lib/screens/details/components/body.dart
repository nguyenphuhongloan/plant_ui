import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui/constants.dart';
import 'package:plant_ui/screens/details/components/title_and_price.dart';

import 'image_and_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [ImageAndIcons(), 
        TitleAndPrice(title: "Plant", country: "Country", price: 450,),
        SizedBox(
          height: 20,
          width: size.width,
        ),
        Row(
          children: [
            Container(
              width: size.width/2,
              height: 84,
              child: TextButton(
                child: Text("Buy Now",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(36), )))
                ),
                onPressed: (){},),
            ),
            Container(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  child: Text("Description", style: TextStyle(
                    fontSize: 20
                  ),),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(kPrimaryColor)
                  ),
                  onPressed: () {},
                ),
              )
          ],
        )
        ],
      ),
    );
  }
}
