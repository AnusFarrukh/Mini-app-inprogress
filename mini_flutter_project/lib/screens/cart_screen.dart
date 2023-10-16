import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  final String svgPath;
  final String name;
  final String title;
  final String price;

  const CartScreen({
    required this.svgPath,
    required this.name,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color(0xFFF9B023),
              child: Row(
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
                    "Shopping Cart",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 390,
              color: Color(0xFFF9B023),
              child: const Row(
                children: [
                  // Row(),
                  Text(
                    "#",
                    style: TextStyle(
                      fontSize: 270,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 218, 156, 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 100,
                    ),
                    child: Text(
                      "25%",
                      style: TextStyle(
                        fontSize: 110,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFFAFBFD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 49,
              width: 390,
              color: const Color.fromARGB(255, 193, 141, 38),
              child: const Center(
                child: Text(
                  "Use code #HalalFood at Checkout",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1E222B)),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  //isko text dena hai
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 194, 200, 212),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        height: 60,
                        width: 300, // Set width to full screen width
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF2A4BA0),
                        ),
                        child: Center(
                          child: Text(
                            "Proceed To Checkout",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ListTile(
//           leading: SvgPicture.asset(svgPath),
//           title: Text(name),
//           subtitle: Text(title),
//           trailing: Text(price),
//         ),