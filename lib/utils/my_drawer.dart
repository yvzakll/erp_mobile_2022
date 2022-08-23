import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromRGBO(29, 80, 121, 1),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [Text("  adadsa"), Text("data")],
        ));
  }
}
