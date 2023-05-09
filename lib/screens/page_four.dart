import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0), // here the desired height
          child: AppBar(
            title: const Text(
              "Logo",
              style: TextStyle(fontSize: 40),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: SizedBox(
                  // height: 500, //height of button
                  // width: 300, //width of button
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 36, 32, 32)),
                        // padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 30))),
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            width: 900,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Row(
                  children: [
                    Container(
                        color: Colors.grey,
                        width: 350,
                        child: Column(
                          children: [
                            Text("First Name "),
                            Text("Middle Name"),
                            Text("Last Name "),
                            Text("Blood Type"),
                            Text("Phone"),
                            Text("Email"),
                            Text("Date"),
                            Text("Time"),
                          ],
                        )),
                    Container(
                        color: Colors.white,
                        width: 100,
                        child: Column(
                          children: [
                            Text("Column"),
                            Text("Column"),
                            Text("Column"),
                            Text("Column"),
                          ],
                        )),
                  ],
                ))
              ],
            )),
          ),
        ));
  }
}
