import 'package:flutter/material.dart';
import 'package:furniture_app/colors/colors.dart';
import 'package:furniture_app/models/detail_page/sofa_detail.dart';

class SofaModel extends StatefulWidget {
  const SofaModel({super.key});

  @override
  State<SofaModel> createState() => _SofaModelState();
}

class _SofaModelState extends State<SofaModel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 25),
          child: Container(
            height: 220,
            width: 162,
            decoration: BoxDecoration(
                color: MyColors.container,
                borderRadius: BorderRadius.circular(22)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined))
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 35,
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SofaDetails(),
                    ));
              },
              child: Hero(
                  tag: 'Sofa',
                  child: Image(image: AssetImage('images/product1.png')))),
        ),
        Positioned(
          top: 150,
          left: 30,
          child: Text(
            'Room Sofa',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 170,
          left: 30,
          child: Row(
            children: [
              CircleAvatar(
                radius: 7,
                backgroundColor: MyColors.theme,
              ),
              SizedBox(width: 5),
              CircleAvatar(
                radius: 7,
                backgroundColor: MyColors.color2,
              ),
              SizedBox(width: 5),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.black,
              )
            ],
          ),
        ),
        Positioned(
          top: 210,
          left: 30,
          child: Row(
            children: [
              Text(
                "₹2500",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 70),
              CircleAvatar(
                backgroundColor: MyColors.theme,
                radius: 19,
                child: Center(
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add))),
              )
            ],
          ),
        )
      ],
    );
  }
}
