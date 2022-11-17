import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/model/foods_model.dart';
import 'package:testapp/widgets/flter_button.dart';
import 'package:testapp/widgets/food_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool menuOpen = false;
  double tranx = 0, trany = 0, scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      transform: Matrix4.translationValues(tranx, trany, 0)..scale(1.0),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.white,
            offset: Offset(-8, -4),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 50),
            buildAppbar(),
            buildSearch(),
            buildFiltter(),
            buidFoodsList(),
            const Text("Feature"),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      color: Colors.blue,
      height: 160,
    );
  }

  Widget buildAppbar() {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        !menuOpen
            ? IconButton(
                icon: SvgPicture.asset(
                  "assets/svg/menu_icon.svg",
                  height: 20,
                ),
                onPressed: () {
                  scale = 0.6;
                  tranx = size.width - 100;
                  trany = (size.height - size.height * scale) / 2;
                  setState(() {
                    menuOpen = true;
                  });
                },
              )
            : IconButton(
                icon: SvgPicture.asset(
                  "assets/svg/back_icon.svg",
                  color: Colors.blue,
                  height: 22,
                ),
                onPressed: () {
                  scale = 1;
                  tranx = 0;
                  trany = 0;
                  setState(() {
                    menuOpen = false;
                  });
                },
              ),
        const Text(
          "Dashboard",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/notification_icon.svg",
            height: 22,
          ),
          color: Colors.grey,
        )
      ],
    );
  }

  Widget buildSearch() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(4),
              height: 44,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        hintText: "Search Item",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none),
                        fillColor: const Color(0xffe6e6ec),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffe6e6ec),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/svg/tune_icon.svg",
                        height: 28,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFiltter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FilterButton(
            title: "Popular",
            isSeleted: true,
          ),
          FilterButton(
            title: "New Items",
            isSeleted: false,
          ),
          FilterButton(
            title: "Foods",
            isSeleted: false,
          ),
          FilterButton(
            title: "Drink",
            isSeleted: true,
          ),
          FilterButton(
            title: "Fast-Foods",
            isSeleted: false,
          ),
          FilterButton(
            title: "Null",
            isSeleted: false,
          ),
          FilterButton(
            title: "Null",
            isSeleted: true,
          ),
        ],
      ),
    );
  }

  Widget buidFoodsList() {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 16, left: 10, right: 10),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodlist.length,
          itemBuilder: (context, index) {
            FoodModel food = foodlist[index];
            return DrinkCard(food: food);
          }),
    );
  }
}
