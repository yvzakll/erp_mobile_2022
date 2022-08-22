import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';

class IslemCard extends StatelessWidget {
  final String cardImagePath;
  final String cardName;

  const IslemCard({
    Key? key,
    required this.cardImagePath,
    required this.cardName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 10, right: 5, top: 10),
      child: Container(
        padding: const EdgeInsets.only(top: 20),
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
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    cardImagePath,
                    width: 53,
                    height: 53,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(cardName, style: MyConstants.miniTextStyle2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
