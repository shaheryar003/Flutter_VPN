import 'package:flutter/material.dart';
import 'package:vpn/constants.dart';

import '../../language/language_screen.dart';
import '../../Server/server_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
bool isactive=false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        title: const Text(
          "SHERU VPN",
          style: TextStyle(color: secndryColor),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "SHERU VPN",
                  style: TextStyle(
                      color: kPrimaryClr,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LanguageScreen()));
              },
              leading: const Icon(
                Icons.translate,
                color: Colors.black,
              ),
              title: const Text(
                "Select Language",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 12,
              ),
            ),
            ListTile(
              onTap: () {  },
              leading: const Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              title: const Text(
                "Rate Us",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                },
              leading: const Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: const Text(
                "Share App",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                 },
              leading: const Icon(
                Icons.all_inbox_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "About US",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            const Spacer(),
            const Text("V 0.1", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.11,
            ),
            //VPN Start Stop Button
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(05),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 150,
                      width:150,
                      decoration: const BoxDecoration(
                        color:kWhiteClr,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color: isactive == true ? Colors.red : Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            isactive == true ? "STOP" : "START",
                            style: TextStyle(
                              color:
                              isactive == true ? Colors.red : Colors.green,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.11,
            ),
            //connection section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: isactive == true? kPrimaryClr: kPrimaryClr.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  isactive == true ? "Connected" : "Not Connected",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: secndryColor),
                ),
              ),
            ),
            //select country
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServerScreen()));
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kWhiteClr,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Select Location",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: secndryColor,
                      )
                    ],
                  ),
                
                ),
              ),
            
            ),
            //const Spacer(),
            
         Text("IN ALPHA STAGE", style: TextStyle(color: Colors.red)),
        const Spacer(),
//internet speed
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(05),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Download",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "128kb" : "0,0kb",
                        style:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "128kb" : "0,0kb",
                        style:
                        const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// now we build server list screen , first of all we have to build model of our servers