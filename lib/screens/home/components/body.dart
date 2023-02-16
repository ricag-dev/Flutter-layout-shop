import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'deatured_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tamaño de scree total
    Size size = MediaQuery.of(context).size;

    // Se queda flotando al scroll
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomendaciones",
            press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreBtn(title: "Más vistas", press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
