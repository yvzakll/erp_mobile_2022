import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';

class RaporCard extends StatelessWidget {
  final String cardImagePath;
  final String cardName;

  const RaporCard({
    Key? key,
    required this.cardImagePath,
    required this.cardName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, bottom: 8, right: 7, top: 18),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(36, 70, 103, 1),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 2.0,
                offset: Offset(2.0, 2.0))
          ],
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color.fromRGBO(36, 70, 103, 1),
          ),
        ),
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (() {
                  debugPrint("ayar iconuna basıldı");
                }),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    cardImagePath,
                    height: 90,
                    width: 90,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(cardName, style: MyConstants.raporTextStyle)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
