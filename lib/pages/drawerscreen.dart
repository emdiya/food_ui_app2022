import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue.shade400,
            Colors.blue.shade900,
          ],
        ),
      ),
      //color: Colors.blueAccent,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 60),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 40,
                      child: Image.asset(
                        "assets/logo/fast-food-logo-emblem.png",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "EM DiYA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "diya@info.com",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/payment_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 22),
                      const Text(
                        "Payments",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/discount_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Discounts",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/notification_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Notification",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/shop_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Orders",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/ask_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Help",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 140),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/setting_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Setting",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svg/chat_support_icon.svg",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        "Support",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
          //MenuItem(title: '', icon: Icons.search),
        ],
      ),
    );
  }
}
