import 'package:flutter/material.dart';

import '../../constants.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        title: const Text(
          "Select Language",
          style: TextStyle(color: secndryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimaryClr)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/country/flag/ic_us.png",
                          height: 60,
                          width: 60,
                        ),
                        const Text(
                          "English",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
