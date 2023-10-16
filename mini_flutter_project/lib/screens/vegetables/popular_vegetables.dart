import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_flutter_project/screens/product_details.dart';
import 'package:mini_flutter_project/screens/vegetables/all_vegetables.dart';
import 'package:mini_flutter_project/screens/vegetables/highprice_vegetables.dart';
import 'package:mini_flutter_project/screens/vegetables/lowprice_vegetables.dart';

class PopularVegetables extends StatefulWidget {
  const PopularVegetables({super.key});

  @override
  State<PopularVegetables> createState() => _PopularVegetablesState();
}

class _PopularVegetablesState extends State<PopularVegetables> {
  int selectedContainerIndex = 1;

  List<String> upbartitle = [
    "All Vegetables",
    "Popular Vegetables",
    "Low Price Vegetables",
    "High Price Vegetables",
  ];
  List ProductData = [
    {'price': '\$8', 'name': "Potato", 'title': 'Fresh & Organic'},
    {'price': '\$15', 'name': 'Carrot', 'title': 'Fresh & Organic'},
    {'price': '\$30', 'name': 'Tomato', 'title': 'Fresh & Organic'},
    // {'price': '\$50', 'name': 'Onion', 'title': 'Fresh & Organic'},
    // {'price': '\$20', 'name': 'Bringal', 'title': 'Fresh & Organic'},
    // {'price': '\$10', 'name': 'Broccoli', 'title': 'Fresh & Organic'},
  ];
  List Productsvgpath = [
    "assets/svg/potato.svg",
    "assets/svg/carrotsvegetable2.svg",
    "assets/svg/tomatovegetable3.svg",
    // "assets/svg/onion.svg",
    // "assets/svg/bringalvegetable5.svg",
    // "assets/svg/broccoli.svg",
  ];
  List upbarpages = [
    AllVegetables(),
    PopularVegetables(),
    LowPriceVegetables(),
    HighPriceVegetables(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: SvgPicture.asset("assets/svg/Fill 4.svg")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Upto 50% Fish Items",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < upbartitle.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedContainerIndex = i;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => upbarpages[i],
                            ),
                          );
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.41,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: selectedContainerIndex == i
                                ? Color(0xFFF9B023)
                                : Colors.white,
                            border: Border.all(color: Color(0xFFB2BBCE)),
                          ),
                          child: Center(
                            child: Text(
                              upbartitle[i],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: selectedContainerIndex == i
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                  height: 80, // Adjusted image height
                                  width: 80, // Adjusted image width
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
                              padding: EdgeInsets.symmetric(vertical: 0),
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
                                  SvgPicture.asset("assets/svg/Cart.svg"),
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
        ),
      ),
    );
  }
}
