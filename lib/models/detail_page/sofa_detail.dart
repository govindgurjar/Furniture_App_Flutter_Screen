import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/colors/colors.dart';

class SofaDetails extends StatefulWidget {
  const SofaDetails({super.key});

  @override
  State<SofaDetails> createState() => _SofaDetailsState();
}

class _SofaDetailsState extends State<SofaDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
              ],
            ),
            Hero(
              tag: 'Sofa',
              child: Image.asset('images/sofa1.png'),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Room Sofa',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.minus),
                          Icon(
                            FontAwesomeIcons.one,
                            size: 18,
                          ),
                          Icon(FontAwesomeIcons.plus),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: MyColors.theme,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: MyColors.color2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: MyColors.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(
                  "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time.",
                  overflow: TextOverflow.clip,
                  maxLines: 5,
                  softWrap: true,
                ),
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹2500',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        color: MyColors.theme,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Add to card',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
