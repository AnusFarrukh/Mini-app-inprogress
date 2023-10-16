import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_flutter_project/screens/cart_screen.dart';
import 'package:mini_flutter_project/screens/product_details.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List productData = [
    //   {'price': '\$325', 'name': 'Clown Tang'},
    //   {'price': '\$89', 'name': 'Gold Fish'},
    //   {'price': '\$250', 'name': 'Black Chicken'},
    //   {'price': '\$05', 'name': 'Chicken'},
    //   {'price': '\$05', 'name': 'Grapes'},
    //   {'price': '\$08', 'name': 'Apples'},
    //   {'price': '\$05', 'name': 'Potatoes'},
    //   {'price': '\$08', 'name': 'Onions'},
    // ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220,
                color: const Color(0xFF153075),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 30, bottom: 3),
                            child: const Text(
                              "Hey, User",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartScreen(
                                            svgPath: '',
                                            price: '',
                                            title: '',
                                            name: '',
                                          )));
                            },
                            child: SvgPicture.asset(
                              "assets/svg/bag.svg",
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Delivery to",
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Karachi, Pakistan",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    "assets/svg/drop arrow icon.svg",
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 150,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Within"),
                                SizedBox(
                                  height: 05,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "1 Hour",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                        "assets/svg/drop arrow icon.svg")
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 280,
                            height: 140,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFeb3b),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "50% OFF",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                  ),
                                  Text(
                                    "On your First 03 Order",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 280,
                            height: 130,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF06292),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "50% OFF",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                  ),
                                  Text(
                                    "Hurry Up Order Here",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
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
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CartScreen(
                                              svgPath: Productsvgpath[i],
                                              name: ProductData[i]['name'],
                                              title: ProductData[i]['title'],
                                              price: ProductData[i]['price'],
                                            ),
                                          ),
                                        );
                                      },
                                      child: SvgPicture.asset(
                                          "assets/svg/Cart.svg"))
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
