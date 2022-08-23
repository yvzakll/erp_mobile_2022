import 'package:erp_mobile_new/pages/home_page.dart';
import 'package:erp_mobile_new/pages/login_screen.dart';
import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
    );
  }
}



/* void showSnackBar(BuildContext context) {
  var snackBar = SnackBar(content: Text("yavuzzz"));
  Scaffold.of(context).showSnackBar(snackBar);
}
 */
/* RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color.fromRGBO(30, 81, 122, 1),
                                      Color.fromRGBO(48, 100, 139, 1),
                                      Color.fromRGBO(65, 118, 155, 1),
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                children: [],
                              )),
                        ) */
