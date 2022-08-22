// ignore_for_file: prefer_const_constructors

import 'package:erp_mobile_new/pages/islemler_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapSec extends StatelessWidget {
  HesapSec({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70),
              child: TextField(
                onChanged: (value) {
                  /*   setState(() {
                      searchString = value.toLowerCase();
                    }); */
                },
                decoration: InputDecoration(
                  hintText: "Hesap Adı",
                  hintStyle:
                      const TextStyle(color: Colors.white70, fontSize: 14),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 1),
                  ),

                  /*  border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70,
                              style: BorderStyle.solid,)) */
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 40,
              width: 200,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: GestureDetector(
                child: Text(
                  "hesap adı seç",
                  style: GoogleFonts.outfit(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CariIslemler(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

















/*
SafeArea(
      child: Scaffold(
          body: Conta(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  onChanged: (value) {
                    /*   setState(() {
                      searchString = value.toLowerCase();
                    }); */
                  },
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Hesap Adı",
                    hintStyle:
                        const TextStyle(color: Colors.white70, fontSize: 14),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 0.5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 0.5),
                    ),

                    /*  border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70,
                              style: BorderStyle.solid,)) */
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              )
            ],
          )
        ],
      )),
    );

*/