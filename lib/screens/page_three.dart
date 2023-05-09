
import 'package:desk/screens/page_four.dart';
import 'package:desk/summaryPage.dart';
import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: const Color(0xFF4189DD)),
                ),
                //
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Please select your preferred date and time of appointment.",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Container(
                  height: 900,
                  color: Colors.white,
                  child: Column(children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Select Date",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Search center addres"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.black),
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Time ',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Available slots',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Percentage',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '10:00 Am',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('300'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('100%'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '11:00 Am',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('280'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('89%'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '12:00 Pm',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('40%'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '1:00 Pm',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('299'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('99.6'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '2:00 Pm',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('250'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('70%'),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              child: Text(
                                '3:00 Pm',
                                style: TextStyle(
                                    backgroundColor: Color(0xff4189DD),
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('150'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('50%'),
                            ),
                          ])
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SummaryPge(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
