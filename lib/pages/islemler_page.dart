import 'package:erp_mobile_new/pages/maden_screen.dart';
import 'package:erp_mobile_new/utils/grid_tile.dart';
import 'package:erp_mobile_new/utils/islem_tile.dart';
import 'package:flutter/foundation.dart';
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MadenScreen(),
                          ));
                        },
                        child: const IslemCard(
                          cardImagePath: "assets/icons/maden.png",
                          cardName: "Maden",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/hurda.png",
                          cardName: "Hurda",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/money.png",
                          cardName: "Nakit",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/hizmet.png",
                          cardName: "Hizmet",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/vadeli.png",
                          cardName: "Vadeli",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/model.png",
                          cardName: "Model",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/transfer2.png",
                          cardName: "Transfer",
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IslemCard(
                          cardImagePath: "assets/icons/liste.png",
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
