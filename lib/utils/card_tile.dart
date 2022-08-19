import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String cardImagePath;
  final String cardName;

  const CardTile(
      {Key? key, required this.cardImagePath, required this.cardName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, bottom: 28, right: 5),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 90,
        height: 75,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(36, 70, 103, 1),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  offset: Offset(2.0, 2.0))
            ],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color.fromRGBO(36, 70, 103, 1))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                cardImagePath,
                width: 33,
                height: 33,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 3),
            Text(cardName, style: MyConstants.miniTextStyle),
          ],
        ),
      ),
    );
  }
}
