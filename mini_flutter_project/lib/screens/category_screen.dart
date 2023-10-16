import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_flutter_project/screens/chickens/all_chickens.dart';
import 'package:mini_flutter_project/screens/fishes/all_fishes.dart';
import 'package:mini_flutter_project/screens/fruits/all_fruits.dart';
import 'package:mini_flutter_project/screens/meats/all_meats.dart';

import 'package:mini_flutter_project/screens/product_details.dart';
import 'package:mini_flutter_project/screens/vegetables/all_vegetables.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> svgPaths = [
      "assets/svg/1.svg",
      "assets/svg/2.svg",
      "assets/svg/chick.svg.svg",
      "assets/svg/3.svg",
      "assets/svg/4.svg",
    ];
    List<String> categoryTitles = [
      "Fishes",
      "Meats",
      "Chicken",
      "Fruits",
      "Vegetables"
    ];

    List ProductData = [
      {'price': '\$325', 'name': 'Clown Fish', 'title': 'From Sea'},
      {'price': '\$89', 'name': 'Gold Fish', 'title': 'From Sea'},
      {'price': '\$250', 'name': 'Chicken', 'title': 'Fresh & Organic'},
      {'price': '\$05', 'name': 'Camel Meat', 'title': 'Organic'},
      {'price': '\$05', 'name': 'Grapes', 'title': 'Fresh & Organic'},
      {'price': '\$08', 'name': 'Banana', 'title': 'Fresh & Organic'},
      {'price': '\$05', 'name': 'Potatoes', 'title': 'Fresh & Organic'},
      {'price': '\$08', 'name': 'Onions', 'title': 'Fresh & Organic'},
    ];
    List Productsvgpath = [
      "assets/svg/fish-clouwn.svg",
      "assets/svg/FX13_goldfish.svg",
      "assets/svg/chicken.svg",
      "assets/svg/placidoaps_Chiken.svg",
      "assets/svg/grapes.svg",
      "assets/svg/yellow-banana-cluster.svg",
      "assets/svg/potato.svg",
      "assets/svg/onion.svg",
    ];
    List itembarPages = [
      AllFishes(),
      AllMeats(),
      AllChickens(),
      AllFruits(),
      AllVegetables(),
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < svgPaths.length; i++)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => itembarPages[i],
                            ),
                          );
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: SvgPicture.asset(
                                  svgPaths[i],
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                ),
                                child: Text(
                                  categoryTitles[i],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 5,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < svgPaths.length; i++)
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(svgPaths[i]),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                  GridView.count(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    shrinkWrap: true,
                    children: [
                      for (int i = 0; i < Productsvgpath.length; i++)
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                  svgPath: Productsvgpath[i],
                                  name: ProductData[i]['name'],
                                  title: ProductData[i]['title'],
                                  price: ProductData[i]['price'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      Productsvgpath[i],
                                      height: 90,
                                      // MediaQuery.of(context).
                                      width: 110,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 8,
                                  ),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      ProductData[i]['name'],
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF555555),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 8,
                                  ),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      ProductData[i]['title'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF555555),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ProductData[i]['price'],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SvgPicture.asset("assets/svg/Cart.svg")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
