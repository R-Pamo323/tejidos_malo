import 'package:flutter/material.dart';

import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: MyColors.instance.white,
        border: Border.symmetric(
          horizontal: BorderSide(color: MyColors.instance.grayE3E4E8, width: 2),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Productos Destacados",
                style: MyStyles.instance.yellow20W700Outfit,
              ),
              Row(
                children: [
                  Text("Ver todos", style: MyStyles.instance.black14W500Outfit),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  margin: EdgeInsets.only(right: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: MyColors.instance.grayE3E4E8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: SizedBox(
                          height: 110,
                          width: double.infinity,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(MyImages.splash1, fit: BoxFit.cover),
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                      colors: [
                                        Colors.white.withValues(alpha: 0.5),
                                        Colors.white.withValues(
                                          alpha: 0.000001,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chunky Knit Beanie with Pom",
                              style: MyStyles.instance.black14W400OpenSans,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "S/.28.00",
                              style: MyStyles.instance.black14W500OpenSans,
                            ),
                            SizedBox(height: 10),
                            ButtonWidget(
                              onTap: () {},
                              height: 35,
                              icon: Icons.local_grocery_store_outlined,
                              text: "Agregar",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
