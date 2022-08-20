import 'package:erp_mobile_new/utils/grid_tile.dart';
import 'package:erp_mobile_new/utils/islem_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CariIslemler extends StatefulWidget {
  const CariIslemler({Key? key}) : super(key: key);

  @override
  State<CariIslemler> createState() => _CariIslemlerState();
}

ScrollController? _scrollController1;

class _CariIslemlerState extends State<CariIslemler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            controller: _scrollController1,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.drag_handle_rounded,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 100),
                      child: Image.asset(
                        "assets/images/ERPMOBILE.png",
                        height: 60,
                        width: 120,
                      ),
                    )
                  ],
                ),
                Card(
                  color: const Color.fromRGBO(83, 109, 136, 0.9),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HESAP ADI",
                              style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Son Islem Tarihi: 07/05/2022",
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "Son Mutabakat Tarihi: 07/05/2022",
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromRGBO(83, 109, 136, 0.9),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: SizedBox(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Maden",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Hurda",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Nakit",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Hizmet",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Vadeli",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Model",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Transfer",
                        ),
                      ),
                      GestureDetector(
                        child: const IslemCard(
                          cardImagePath: "assets/icons/books.png",
                          cardName: "Geçmis",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
