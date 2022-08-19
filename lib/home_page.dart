import 'package:erp_mobile_new/hesapsec_page.dart';
import 'package:erp_mobile_new/rapor_screen.dart';
import 'package:erp_mobile_new/utils/card_tile.dart';
import 'package:erp_mobile_new/utils/grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            SingleChildScrollView(
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 0),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "İşlemler",
                            // Google fonts Pacifico fontu
                            style: GoogleFonts.oxygen(
                                // text rengi
                                color: Colors.white,
                                // boyutu
                                fontSize: 30,
                                // Ağırlığı (kalnılık, incelik oranı)
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("işlem açıldı");
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HesapSec(),
                            ));
                          },
                          child: Image.asset(
                            "assets/images/islem.png",
                            height: 250,
                            width: 400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  cardBuilder(context),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "İstatistikler",
                          style: GoogleFonts.oxygen(
                              // text rengi
                              color: Colors.white,
                              // boyutu
                              fontSize: 30,
                              // Ağırlığı (kalnılık, incelik oranı)
                              fontWeight: FontWeight.w900),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                        GestureDetector(
                          child: const GridCard(
                            cardImagePath: "assets/icons/books.png",
                            cardName: "İşlem Sayısı",
                            cardNumber: "120.258",
                          ),
                        ),
                      ],
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

//ortadaki kartları oluşturudğumuz metod
  Container cardBuilder(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: [
          GestureDetector(
            child: const CardTile(
              cardImagePath: "assets/icons/accounts.png",
              cardName: "Hesaplar",
            ),
            onTap: () {
              debugPrint("hesaplar açıldı");
            },
          ),
          GestureDetector(
            child: const CardTile(
              cardImagePath: "assets/icons/history.png",
              cardName: "Geçmiş",
            ),
            onTap: () {
              debugPrint("geçmiş açıldı");
            },
          ),
          GestureDetector(
            child: const CardTile(
              cardImagePath: "assets/icons/prices.png",
              cardName: "Kurlar",
            ),
            onTap: () {
              debugPrint("kurlar açıldı");
            },
          ),
          GestureDetector(
            child: const CardTile(
              cardImagePath: "assets/icons/graph.png",
              cardName: "Raporlar",
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RaporScreen(),
              ));
            },
          ),
          GestureDetector(
            child: const CardTile(
              cardImagePath: "assets/icons/history.png",
              cardName: "Geçmiş",
            ),
            onTap: () {
              debugPrint("geçmiş açıldı");
            },
          ),
        ],
      ),
    );
  }
}
