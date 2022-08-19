// ignore_for_file: sort_child_properties_last

import 'package:erp_mobile_new/rapor_screen.dart';
import 'package:erp_mobile_new/utils/card_tile.dart';
import 'package:erp_mobile_new/utils/constants.dart';
import 'package:erp_mobile_new/utils/grid_tile.dart';
import 'package:erp_mobile_new/utils/rapor_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iosstyleswitch/iosstyleswitch.dart';

class RaporScreen extends StatefulWidget {
  const RaporScreen({Key? key}) : super(key: key);

  @override
  State<RaporScreen> createState() => _RaporScreenState();
}

bool secilenRapor = false;

class _RaporScreenState extends State<RaporScreen> {
  @override
  void initState() {
    // TODO: implement initState
    secilenRapor;
  }

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
                            "Raporlar",
                            // Google fonts Pacifico fontu
                            style: GoogleFonts.outfit(
                                // text rengi
                                color: Colors.white,
                                // boyutu
                                fontSize: 30,
                                // Ağırlığı (kalnılık, incelik oranı)
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //cardBuilder(context),
                  /* Padding(
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
                  ), */
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
                          child: const RaporCard(
                            cardImagePath: "assets/icons/reporrt1.png",
                            cardName: "Bakiye Ekstresi",
                          ),
                          onTap: () {
                            debugPrint("bakiyeye basıldı");
                          },
                        ),
                        GestureDetector(
                          child: const RaporCard(
                            cardImagePath: "assets/icons/report2.png",
                            cardName: "Kar Analiz",
                          ),
                        ),
                        GestureDetector(
                          child: const RaporCard(
                            cardImagePath: "assets/icons/report3.png",
                            cardName: "İşlem Kontrol",
                          ),
                        ),
                        GestureDetector(
                          child: const RaporCard(
                            cardImagePath: "assets/icons/report5.png",
                            cardName: "Silinmiş İşlemler",
                          ),
                        ),
                        GestureDetector(
                          child: const RaporCard(
                            cardImagePath: "assets/icons/report6.png",
                            cardName: "Pozisyon",
                          ),
                        ),
                        GestureDetector(child: transparentCard()),
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

  transparentCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, bottom: 8, right: 7, top: 18),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  offset: Offset(2.0, 2.0))
            ],
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color.fromRGBO(83, 98, 122, 1))),
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (() {
                  debugPrint("ayar iconuna basıldı");
                }),
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
                  GestureDetector(
                    child: Image.asset(
                      "assets/icons/plus.png",
                      height: 90,
                      width: 90,
                      color: const Color.fromRGBO(83, 98, 122, 1),
                    ),
                    onTap: () {
                      debugPrint("Rapor Ekle");
                      raporEkleCard(context);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Rapor Ekle", style: MyConstants.raporTextStyle)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void raporEkleCard(context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      context: context,
      builder: (BuildContext buildContext) {
        return DraggableScrollableSheet(
            initialChildSize: 0.90, //set this as you want
            maxChildSize: 0.90, //set this as you want
            minChildSize: 0.90, //set this as you want
            expand: true,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  border: Border.all(
                    color: const Color.fromRGBO(60, 107, 141, 1),
                  ),
                  // ignore: prefer_const_constructors
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: const Alignment(0.8, 1),
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: <Color>[
                      const Color.fromRGBO(30, 81, 122, 1),
                      const Color.fromRGBO(48, 101, 139, 0.8),
                      const Color.fromRGBO(67, 120, 157, 1),
                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    tileMode: TileMode.clamp,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SafeArea(
                    child: Center(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Rapor Seçiniz",
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 5,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Bakiye Ekstresi",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Kar Analiz",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Islem Kontrol",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Silinmis Islemler",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Pozisyon",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Maden Stok Listesi",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Nakit Stok Listesi",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 1,
                            endIndent: 25,
                            indent: 25,
                          ),
                          IosSwitchButton(
                            buttonShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                            color: Colors.transparent,
                            // ignore: prefer_const_constructors
                            bodyWidget: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Hacim Raporu",
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                            ),
                            onChanged: (v) {},
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: const LinearGradient(
                                begin: Alignment(-0.95, 0.0),
                                end: Alignment(1.0, 0.0),
                                colors: [Color(0xff667eea), Color(0xff64b6ff)],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
      },
    );
    setState(() {});
  }
}
