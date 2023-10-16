import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key});

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
                    child:
                        Center(child: SvgPicture.asset("assets/svg/Fill 4.svg")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "More Screen",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 340,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    tileColor: Colors.transparent,
                    leading: SvgPicture.asset(
                      "assets/svg/abstract-user-flat-1.svg",
                      color: Colors.yellow,
                      height: 85,
                    ),
                    title: Text(
                      'User',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Userexample123@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Other Settings",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 340,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    tileColor: Colors.transparent,
                    leading: SvgPicture.asset(
                      "assets/svg/noun-project-462.svg",
                      color: Colors.yellow,
                      height: 145,
                    ),
                    title: Text(
                      'Address',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Change your address",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 340,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    tileColor: Colors.transparent,
                    leading: SvgPicture.asset(
                      "assets/svg/concrete_mixer.svg",
                      color: Colors.yellow,
                      height: 50,
                    ),
                    title: Text(
                      'Current Order',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Track your order',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 340,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    tileColor: Colors.transparent,
                    leading: SvgPicture.asset(
                      "assets/svg/question-ideogram.svg",
                      color: Colors.yellow,
                      height: 90,
                    ),
                    title: Text(
                      'Help',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Help and support',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 340,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    tileColor: Colors.transparent,
                    leading: SvgPicture.asset(
                      "assets/svg/artmaster_logout_mini_icon.svg",
                      color: Colors.yellow,
                      height: 75,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Logout from the app',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
