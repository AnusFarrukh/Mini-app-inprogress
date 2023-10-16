import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    Key? key,
    required this.svgPath,
    required this.name,
    required this.price,
    required title,
  }) : super(key: key);

  final String svgPath;
  final String name;
  final String price;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Jack',
      'subtitle': 'Good',
    },
    {
      'title': 'Michael',
      'subtitle': 'Excellent',
    },
    {
      'title': 'Julie',
      'subtitle': 'Not bad',
    },
    {
      'title': 'Thomas',
      'subtitle': 'Well Services',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: SvgPicture.asset("assets/svg/Fill 4.svg")),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Product Details",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   name,
                        //   style: TextStyle(
                        //       fontSize: 50, fontWeight: FontWeight.w300),
                        // ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 200,
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // yahan us container ki svgimage
                          SvgPicture.asset(
                            widget.svgPath,
                            height: 130,
                            width: 70,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 130,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F9FB),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //  SizedBox(height: 25,),
                                GestureDetector(
                                  onTap: toggleFavorite,
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    size: 40,
                                    color:
                                        isFavorite ? Colors.pink : Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.more_horiz_rounded,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.10,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //yahan uska name
                                  Text(
                                    widget.name,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        // yahan uski price
                                        widget.price,
                                        style: TextStyle(
                                          color: Color(0xFF153075),
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 24,
                                        width: 84,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF153075),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            "\$22.5 OFF",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xFF153075),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                        color: Color(0xFF2A4BA0),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFF153075),
                                  border: Border.all(
                                    color: Color(0xFF153075),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF1E222B),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8891A5),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Nutritional Facts",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF1E222B),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                        Text(
                          "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8891A5),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Reviews",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF1E222B),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),

                        // ListView with 4 items
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Container(
                                width: 340,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(10),
                                    tileColor: Colors.transparent,
                                    leading: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                      size: 50,
                                    ),
                                    title: Text(
                                      items[index]["title"],
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index]["subtitle"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: Colors.yellow,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
