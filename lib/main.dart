import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#E5E5E5"),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
                color: HexColor("#02092A"),
              ),
              title: Center(
                child: Text(
                  "Pending orders",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: HexColor("#FF6600"),
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 336,
              height: 47,
              decoration: BoxDecoration(
                color: HexColor("#C9CCD3"),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 32,
                      width: 150,
                      color: HexColor("#F2F2F2"),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor("#F2F2F2")),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Pickup",
                            style: TextStyle(color: Colors.black),
                          ))),
                  Container(
                      height: 32,
                      width: 150,
                      color: HexColor("#85BA45"),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor("#85BA45")),
                          ),
                          onPressed: () {},
                          child: const Text("Delivery")))
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Text(
                "Order 351",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#030919")),
              ),
              title: Text(
                " 2.7km",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#FF6600"),
                ),
              ),
              trailing: Text(
                "N300",
                style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#030919"),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "7th avenue, Ashok Nagar road \n 24th Highway road, Old nice palace",
                  style: TextStyle(
                    color: HexColor("#555B6A"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(255, 102, 0, 15))),
                  alignment: Alignment.center,
                  height: 33,
                  width: 76,
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: HexColor("#FF6600"),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: HexColor("#DADADA"),
              indent: 30,
              endIndent: 30,
            )
          ],
        ),
      ),
    );
  }
}
