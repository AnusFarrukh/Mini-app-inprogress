import 'package:flutter/material.dart';
import 'package:mini_flutter_project/screens/address_cart.dart';
// import 'package:mini_flutter_project/screens/cart_screen.dart';
// // import 'package:mini_flutter_project/screens/category_screen.dart';
// import 'package:mini_flutter_project/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddressCart(),
    );
  }
}
