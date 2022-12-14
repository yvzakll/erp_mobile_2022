import 'package:erp_mobile_new/interfaces/login_interface.dart';
import 'package:erp_mobile_new/models/user_model.dart';
import 'package:erp_mobile_new/pages/home_page.dart';
import 'package:erp_mobile_new/services/login_service.dart';
import 'package:erp_mobile_new/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ILogin _login = LoginService();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // ignore: unnecessary_new
          new Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Center(
            child: SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/LOGO.png",
                      alignment: Alignment.centerLeft,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        TextField(
                          controller: companyController,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () async {},
                          style: GoogleFonts.outfit(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            /* enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)), */
                            hintText: "Company Name",
                            hintStyle: MyConstants.miniTextInputStyle,
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            icon: Image.asset(
                              "assets/icons/user.png",
                              height: 30,
                              width: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white70,
                          thickness: 0.8,
                        ),
                        TextField(
                          controller: userNameController,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () async {},
                          style: GoogleFonts.outfit(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            /* enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)), */
                            hintText: "Username",
                            hintStyle: MyConstants.miniTextInputStyle,
                            labelStyle: const TextStyle(
                                color: Colors.white, fontFamily: "Oxygen"),
                            icon: Image.asset(
                              "assets/icons/user.png",
                              height: 30,
                              width: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white70,
                          thickness: 0.8,
                        ),
                        TextField(
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () async {},
                          style: GoogleFonts.outfit(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            /* enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)), */
                            hintText: "Parola",
                            hintStyle: MyConstants.miniTextInputStyle,
                            labelStyle: const TextStyle(
                                color: Colors.white, fontFamily: "Oxygen"),
                            icon: Image.asset(
                              "assets/icons/key.png",
                              height: 30,
                              width: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white70,
                          thickness: 0.8,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color.fromRGBO(29, 80, 121, 1),
                                    Color.fromRGBO(48, 100, 139, 1),
                                    Color.fromRGBO(68, 121, 157, 1),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Row(
                              children: [
                                IconButton(
                                    alignment: Alignment.centerLeft,
                                    icon: Image.asset(
                                      "assets/icons/location.png",
                                      height: 20,
                                      width: 20,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {}),
                                const SizedBox(
                                  width: 80,
                                ),
                                Text("MERKEZ",
                                    style: MyConstants.miniTextStyle),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color.fromRGBO(36, 211, 103, 1),
                                    Color.fromRGBO(42, 194, 105, 1),
                                    Color.fromRGBO(49, 177, 1107, 1),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Row(
                              children: [
                                IconButton(
                                    alignment: Alignment.centerLeft,
                                    icon: Image.asset(
                                      "assets/icons/arrowright.png",
                                      height: 20,
                                      width: 20,
                                      color: Colors.white,
                                    ),
                                    onPressed: () async {
                                      UserModel? user = await _login.login(
                                          userNameController.text,
                                          passwordController.text,
                                          companyController.text);

                                      if (user?.token != null) {
                                        debugPrint("Bo?? yada hatal?? giri??....");
                                      } else {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => HomePage(),
                                          ),
                                        );
                                      }
                                    }),
                                const SizedBox(
                                  width: 80,
                                ),
                                Text("Giri?? Yap",
                                    style: MyConstants.miniTextStyle),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          height: 42,
                          width: 50,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color.fromRGBO(29, 80, 121, 1),
                                  Color.fromRGBO(48, 100, 139, 1),
                                  Color.fromRGBO(68, 121, 157, 1),
                                  Color.fromRGBO(60, 117, 153, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(60, 117, 153, 1),
                                    blurRadius: 1.0,
                                    offset: Offset(1.0, 1.0))
                              ]),
                          child: GestureDetector(
                            child: Image.asset(
                              "assets/icons/settings.png",
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      /*  child: Scaffold(
        // By defaut, Scaffold background is white
        // Set its value to transparent
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [],
          ),
        ),
      ), */
    );
  }
}
