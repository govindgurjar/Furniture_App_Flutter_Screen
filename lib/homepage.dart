import 'package:flutter/material.dart';
import 'package:furniture_app/colors/colors.dart';
import 'package:furniture_app/mainpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).devicePixelRatio * 1000,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sofa.png'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  'Find the best \nhome furniture for \nyour room.',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.theme,
                      borderRadius: BorderRadius.circular(5)),
                  height: 40,
                  width: 40,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
