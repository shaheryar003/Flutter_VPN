import 'package:flutter/material.dart';
import 'package:vpn/constants.dart';
import 'package:vpn/models/server_model.dart';

class ServerScreen extends StatefulWidget {
  const ServerScreen({Key? key}) : super(key: key);

  @override
  _ServerScreenState createState() => _ServerScreenState();
}

class _ServerScreenState extends State<ServerScreen> {
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
          "Server List",
          style: TextStyle(color: secndryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            //searchbar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: kWhiteClr,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: flaglist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    color: kWhiteClr,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Image.asset(
                      flaglist[index].image,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      flaglist[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    trailing: const Icon(
                      Icons.signal_cellular_alt,
                      color: kPrimaryClr,
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
