import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/model/foods_model.dart';
import 'package:testapp/pages/foods_detail.dart';

import 'custom_icon_button.dart';

class DrinkCard extends StatelessWidget {
  final FoodModel? food;

  const DrinkCard({Key? key, this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DrinkDetailPage(food: food),
          ),
        );
      },
      child: Container(
        color: Colors.grey.shade100,
        width: MediaQuery.of(context).size.width * 0.5,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDrinkImage(),
            const SizedBox(height: 8),
            buildDrinkInfo(),
          ],
        ),
      ),
    );
  }

  Widget buildDrinkImage() {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          food!.image!,
          height: 110,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        // child: Image.network(
        //   "https://www.knongsrok.com/wp-content/uploads/2020/07/shutterstock_397799917.jpg",
        // ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: CustomIconButton(
          icon: const Icon(Icons.favorite, color: Colors.red),
          onPressed: () {},
          radius: 5,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.orange.shade400,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 8,
            ),
            const SizedBox(height: 2),
            Text(
              "${food!.rating!}",
              style: GoogleFonts.enriqueta(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            Text(
              "(1k+)",
              style: GoogleFonts.enriqueta(
                fontSize: 10,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      )
    ]);
  }

  Widget buildDrinkInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          food!.name!,
          style: GoogleFonts.enriqueta(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
