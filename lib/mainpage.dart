import 'package:flutter/material.dart';
import 'package:furniture_app/colors/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: const Text(
                      'Find the Home \nfurniture',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 35,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        color: MyColors.theme,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                        color: MyColors.bg,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Image.asset('images/icon1.png')),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                        color: MyColors.bg,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Image.asset('images/icon2.png')),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                        color: MyColors.bg,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Image.asset('images/icon3.png')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
