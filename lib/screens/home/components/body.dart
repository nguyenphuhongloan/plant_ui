import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
import 'package:plant_ui/screens/home/components/recommend_plants.dart';
import 'package:plant_ui/screens/home/components/title_with_more_bbtn.dart';

import 'featured_plant.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          headerWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommened",
            press: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

