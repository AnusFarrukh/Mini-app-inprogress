import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressCart extends StatefulWidget {
  const AddressCart({super.key});

  @override
  State<AddressCart> createState() => _AddressCartState();
}

class _AddressCartState extends State<AddressCart> {
  List<Map<String, String>> containeritems = [
    {
      "name": "Home",
      "title": "36 green way, Sunamganj",
    },
    {
      "name": "Office",
      "title": "Medical road, Halal lab, Sunamganj",
    }
  ];
  int selectedContainerIndex = -1; // Track the selected container
  bool isAddPressed = false;

  void selectContainer(int index) {
    setState(() {
      selectedContainerIndex = index;
      isAddPressed = false;
    });
  }

  void addNewAddress(String name, String address) {
    setState(() {
      containeritems.add({"name": name, "title": address});
    });
  }

  void showAddAddressDialog() {
    String newName = "";
    String newAddress = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Add New Address')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter name',
                ),
                onChanged: (value) {
                  newName = value;
                },
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your address',
                ),
                onChanged: (value) {
                  newAddress = value;
                },
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                    },
                    child: Text('Cancel'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addNewAddress(newName, newAddress);
                      Navigator.pop(context); // Close the dialog
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> buildAddressContainers() {
    List<Widget> containers = [];

    for (int i = 0; i < containeritems.length; i++) {
      Map<String, String> item = containeritems[i];
      Widget container = GestureDetector(
        onTap: () {
          selectContainer(i);
        },
        child: Container(
          height: 96,
          width: 327,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedContainerIndex == i
                  ? Color(0xFFD9D9D961) // Change border color if selected
                  : Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  item["name"].toString(),
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF1E222B)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item["title"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: Color(0xFF2A4BA0),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.24,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

      containers.add(container);

      // Add SizedBox below each container except the last one
      if (i < containeritems.length - 1) {
        containers
            .add(SizedBox(height: 20)); // Comment: Add SizedBox with height 20
      }
    }

    return containers;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  child:
                      Center(child: SvgPicture.asset("assets/svg/Fill 4.svg")),
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
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text(
                    "Delivery Address",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: buildAddressContainers(),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                showAddAddressDialog();
              },
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_rounded,
                        size: 30,
                        color: Color(0xFFD9D9D961),
                      ),
                    ),
                    Text(
                      "Add New Address",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
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
          ],
        ),
      ),
    );
  }
}
