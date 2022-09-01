// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_final_fields, unused_field, must_be_immutable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    'Fashion',
    'Electronics',
    'Television',
    'Phone',
    'Laptop',
    'Grocery',
    'Android',
    'Apple',
    'MAC'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello RAKIB",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Let’s gets something?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF46D38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\nCovid 19",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5, right: 10),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/vegetables.png',
                                  width: 80,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF46D38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\nCovid 19",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5, right: 10),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/vegetables.png',
                                  width: 80,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF46D38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During\nCovid 19",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5, right: 10),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/vegetables.png',
                                  width: 80,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF4800),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.grey,
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Text(_categories[index]),
                          )),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 35,
                        crossAxisCount: 2),
                    itemBuilder: (_, index) {
                      return Container(
                        color: Colors.amber,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                                top: -50,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Image.asset(
                                    "assets/phone.png",
                                    width: 150,
                                  ),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Iphone X",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Series 10 Blue",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "\$1000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
