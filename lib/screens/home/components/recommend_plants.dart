import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_ui/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
              image: "assets/images/image_1.png",
              title: "Plant 1",
              country: "country 1",
              price: 441,
              press: () {
                
                 Get.to(() => DetailsScreen()); 
              }),
          RecommendedPlantCard(
              image: "assets/images/image_2.png",
              title: "Plant 2",
              country: "country 2",
              price: 441,
              press: () {
               
                
                Get.to(() => DetailsScreen());
              }),
          RecommendedPlantCard(
              image: "assets/images/image_3.png",
              title: "Plant 3",
              country: "country 3",
              price: 441,
              press: () {
                  Get.to(() => DetailsScreen()); 
              }),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function() press;
  const RecommendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.40,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text("\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
