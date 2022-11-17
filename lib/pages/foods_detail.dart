import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/model/foods_model.dart';
import 'package:testapp/widgets/custom_icon_button.dart';

class DrinkDetailPage extends StatefulWidget {
  final FoodModel? food;

  const DrinkDetailPage({Key? key, this.food}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DrinkDetailPageState createState() => _DrinkDetailPageState();
}

class _DrinkDetailPageState extends State<DrinkDetailPage> {
  FoodModel get food => widget.food!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildImage(),
          buildFullInfo(),
          buildAppBar(),
          buildOrderButton()
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.deepOrange,
              ),
              bacgroundColor: Colors.white70,
              onPressed: () => Navigator.of(context).pop(),
            ),
            CustomIconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {},
              bacgroundColor: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFullInfo() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 2 - 16,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(food.name!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(" \$ ${food.price!}",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 12),
            buidlDescription(),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: Colors.orange.shade500,
                    size: 12,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "${food.rating!}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                  ),
                ),
                const Spacer(),
                CustomIconButton(
                  icon: const Icon(Icons.remove, size: 12),
                  onPressed: () {},
                  bacgroundColor: Colors.black.withOpacity(0.1),
                ),
                const Text(
                  "1",
                  style: TextStyle(fontSize: 14),
                ),
                CustomIconButton(
                  icon: const Icon(Icons.add, size: 12),
                  onPressed: () {},
                  bacgroundColor: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            buildService(),
          ],
        ),
      ),
    );
  }

  Widget buidlDescription() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Particular",
            style: GoogleFonts.jost(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            food.description!,
            style: GoogleFonts.jost(
              fontSize: 12,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildService() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service",
            style: GoogleFonts.jost(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            food.servicedescription!,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
      margin: const EdgeInsets.all(0),
      height: MediaQuery.of(context).size.height / 2,
      child: Image.network(
        food.image!,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildOrderButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
          child: Row(
            children: [
              const SizedBox(width: 28),
              CustomIconButton(
                icon: Icon(
                  Icons.note_alt_outlined,
                  color: Colors.blue.shade700,
                  size: 18,
                ),
                onPressed: () {},
                borderColor: Colors.grey,
              ),
              const SizedBox(width: 20),
              CustomIconButton(
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 18,
                ),
                onPressed: () {},
                borderColor: Colors.grey,
              ),
              const SizedBox(width: 24),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  padding: EdgeInsets.zero,
                  height: 30,
                  width: 150,
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.grey,
                          //primary: Colors.lightGreen.shade600,
                          //onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      child: Text(
                        'Purchased',
                        style: GoogleFonts.jost(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
