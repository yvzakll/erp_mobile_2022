import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String cardImagePath;
  final String cardName;
  final String cardNumber;

  const GridCard(
      {Key? key,
      required this.cardImagePath,
      required this.cardName,
      required this.cardNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, bottom: 20, right: 5, top: 20),
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
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: const Color.fromRGBO(36, 70, 103, 1))),
        child: Column(
          children: [
            Row(
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
                const SizedBox(width: 12),
                Text(cardName, style: MyConstants.miniTextStyle),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(cardNumber, style: MyConstants.bigTextStyle)
          ],
        ),
      ),
    );
  }
}
