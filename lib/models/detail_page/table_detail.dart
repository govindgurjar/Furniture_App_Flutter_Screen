import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/colors.dart';

class WoodTableDetail extends StatefulWidget {
  const WoodTableDetail({super.key});

  @override
  State<WoodTableDetail> createState() => _WoodTableDetailState();
}

class _WoodTableDetailState extends State<WoodTableDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border))
              ],
            ),
            Hero(
              tag: 'Table',
              child: Image.asset(
                'images/table2.png',
                height: 300,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wood Table',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2)),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
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
            const Padding(
              padding: EdgeInsets.all(5.0),
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
                child: const Text(
                  "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time.",
                  overflow: TextOverflow.clip,
                  maxLines: 5,
                  softWrap: true,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '₹905',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        color: MyColors.theme,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
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
