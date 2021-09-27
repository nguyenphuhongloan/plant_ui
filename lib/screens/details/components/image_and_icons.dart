import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plant_ui/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          onPressed: () {
                            Get.back();
                          },
                          icon:
                              SvgPicture.asset("assets/icons/back_arrow.svg"))),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              width: size.width * 0.75,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(42),
                      topLeft: Radius.circular(42)),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: IconButton(
        icon: SvgPicture.asset(icon),
        onPressed: () {},
      ),
    );
  }
}
