import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  //  TabController? tabController;
  // @override
  // void initState() {
  //   tabController = TabController(
  //     length: 2,
  //     vsync: this,
  //     initialIndex: 0,
  //   );
  //   super.initState();
  // }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //code will run when widget rendering complete
    });
  }

  Color mainColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            Ink(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                color: Colors.black,

                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),

                // onPressed: (){},
              ),
            ),
            // SizedBox(width: 82),
            Spacer(),
            const Text('My Bookings'),
            Spacer(),
            // SizedBox(width: 41),
            Ink(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                color: Colors.black,

                onPressed: () {},
                icon: const Icon(Icons.calendar_month),

                // onPressed: (){},
              ),
            ),
            SizedBox(width: 10),
            Ink(
              decoration: BoxDecoration(
                  color: Color(0xffE14942),
                  borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                color: Colors.white,

                onPressed: () {},
                icon: const Icon(Icons.menu),

                // onPressed: (){},
              ),
            ),
          ]),
        ),
        Stack(children: [
          Center(child: Image.asset('lib/hart/images/Rectangle 1.png')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('lib/hart/images/Waiters-pana 1.png'),
              Image.asset('lib/hart/images/Makeup artist-pana 1.png'),
            ],
          )
        ]),

        Container(
          child: TabBar(
            controller: _tabController,
            labelColor: Color(0xffE14942),
            indicatorColor: Color(0xffE14942),
            unselectedLabelColor: Color(0xff9E9E9E),
            tabs: [
              Tab(
                child: Text('Pending'),
              ),
              Tab(
                child: Text(
                  'Running',
                  style: TextStyle(),
                ),
              ),
              Tab(
                child: Text(
                  'Completed',
                  style: TextStyle(),
                ),
              ),
              Tab(
                child: Text(
                  'Cancelled',
                  style: TextStyle(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            // height: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Pending(),
                    Pending(),
                    Pending(),
                  ]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [Running(), Running(), Running()]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Completed(),
                    Completed(),
                    Completed(),
                  ]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Cancelled(),
                    Cancelled(),
                    Cancelled(),
                  ]),
                ),

                // Container(),

                // Container(),
              ],
            ),
          ),
        ),

        // DefaultTabController(
        //     length: 4,
        //     child: TabBar(
        //         // isScrollable: true,
        //         indicatorColor: Color(0xffE14942),
        //         tabs: [
        //
        //           Expanded(
        //             child: TabBarView(children: [
        //
        //             ]),
        //           )
        //         ]))
      ]),
    );
  }

  Padding Cancelled() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: Container(
        height: 370,
        width: 344,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xFFDADADA)),
        ),
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF9F9FB),
              child: Row(children: [
                Container(
                  height: 93,
                  width: 129,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/hart/images/Rectangle1.png'))),
                ),

                // Image.asset('lib/hart/images/Rectangle1.png'),
                // ignore: prefer_const_literals_to_create_immutables
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Text('Booking ID: '),
                      Text('#128394'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  ),
                  Text('Chicken Pizza'),
                  Row(
                    children: [
                      Text('Cheese, canned black beans'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  )
                ])
              ]),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.dangerous_outlined,
                              color: Color(0xffE14942)),
                          Text('Cancelled'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Cancel'),
                          Text('50.00 #'),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 98,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE14942),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                            child: Text(
                          'Book Again',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/Rectangle13.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Restaurant name'),
                              SizedBox(height: 3),
                              Text('SkyKitchen')
                            ],
                          ),
                        )
                      ],
                    ),
                    // child:
                  ),
                  // SizedBox(height: 9),
                  Container(
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE14942),
                                image: DecorationImage(
                                    // fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/locationinfo.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Delivery address'),
                              // SizedBox(height: 3),
                              SizedBox(
                                width: 220,
                                child: Text(
                                  'Andsberger Allies 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              height: 48,
              width: 314,
              decoration: BoxDecoration(
                color: const Color(0xFFE14942),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                'See Cancellation Reason',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Padding Pending() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: Container(
        height: 300,
        width: 344,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xFFDADADA)),
        ),
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF9F9FB),
              child: Row(children: [
                Container(
                  height: 93,
                  width: 129,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/hart/images/Rectangle1.png'))),
                ),

                // Image.asset('lib/hart/images/Rectangle1.png'),
                // ignore: prefer_const_literals_to_create_immutables
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Text('Booking ID: '),
                      Text('#128394'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  ),
                  Text('Chicken Pizza'),
                  Row(
                    children: [
                      Text('Cheese, canned black beans'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  )
                ])
              ]),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Delivery Time'),
                          Text('45 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Booked'),
                          Text('50.00 #'),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 98,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE14942),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () {
                            _bottomSheetPopUp();
                          },
                          child: Center(
                              child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/Rectangle13.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Restaurant name'),
                              SizedBox(height: 3),
                              Text('SkyKitchen')
                            ],
                          ),
                        )
                      ],
                    ),
                    // child:
                  ),
                  // SizedBox(height: 9),
                  Container(
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE14942),
                                image: DecorationImage(
                                    // fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/locationinfo.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Delivery address'),
                              // SizedBox(height: 3),
                              SizedBox(
                                width: 220,
                                child: Text(
                                  'Andsberger Allies 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   height: 48,
            //   width: 314,
            //   decoration: BoxDecoration(
            //     color: const Color(0xFFE14942),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Center(
            //       child: Text(
            //     'See Cancellation Reason',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 12,
            //         fontWeight: FontWeight.w400),
            //   )),
            // ),
          ],
        ),
      ),
    );
  }

  Padding Running() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: Container(
        height: 300,
        width: 344,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xFFDADADA)),
        ),
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF9F9FB),
              child: Row(children: [
                Container(
                  height: 93,
                  width: 129,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/hart/images/Rectangle1.png'))),
                ),

                // Image.asset('lib/hart/images/Rectangle1.png'),
                // ignore: prefer_const_literals_to_create_immutables
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Text('Booking ID: '),
                      Text('#128394'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  ),
                  Text('Chicken Pizza'),
                  Row(
                    children: [
                      Text('Cheese, canned black beans'),
                      // Image.asset('lib/hart/images/vector2.png'),
                    ],
                  )
                ])
              ]),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Delivery Time'),
                          Text('45 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Booked'),
                          Text('50.00 #'),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _bottomSheetPopUp2();
                        },
                        child: Container(
                          height: 35,
                          width: 98,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'Track',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/Rectangle13.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Restaurant name'),
                              SizedBox(height: 3),
                              Text('SkyKitchen')
                            ],
                          ),
                        )
                      ],
                    ),
                    // child:
                  ),
                  // SizedBox(height: 9),
                  Container(
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE14942),
                                image: DecorationImage(
                                    // fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/locationinfo.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Delivery address'),
                              // SizedBox(height: 3),
                              SizedBox(
                                width: 220,
                                child: Text(
                                  'Andsberger Allies 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   height: 48,
            //   width: 314,
            //   decoration: BoxDecoration(
            //     color: const Color(0xFFE14942),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Center(
            //       child: Text(
            //     'See Cancellation Reason',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 12,
            //         fontWeight: FontWeight.w400),
            //   )),
            // ),
          ],
        ),
      ),
    );
  }

  Padding Completed() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: Container(
        height: 370,
        width: 344,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xFFDADADA)),
        ),
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF9F9FB),
              child: Row(children: [
                Container(
                  height: 93,
                  width: 129,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/hart/images/Rectangle1.png'))),
                ),

                // Image.asset('lib/hart/images/Rectangle1.png'),
                // ignore: prefer_const_literals_to_create_immutables
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Text('Booking ID: '),
                      Text('#128394'),
                    ],
                  ),
                  Text('Chicken Pizza'),
                  Row(
                    children: [
                      Text('Cheese, canned black beans'),
                    ],
                  )
                ])
              ]),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.done, color: Color(0xffE14942)),
                          Text('Delivered'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Cancel'),
                          Text('50.00 #'),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _bottomSheetPopUp3();
                        },
                        child: Container(
                          height: 35,
                          width: 98,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'Book Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/Rectangle13.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Restaurant name'),
                              SizedBox(height: 3),
                              Text('SkyKitchen')
                            ],
                          ),
                        )
                      ],
                    ),
                    // child:
                  ),
                  // SizedBox(height: 9),
                  Container(
                    height: 62,
                    width: 314,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 53,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE14942),
                                image: DecorationImage(
                                    // fit: BoxFit.cover,
                                    image: AssetImage(
                                        'lib/hart/images/locationinfo.png'))),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Delivery address'),
                              // SizedBox(height: 3),
                              SizedBox(
                                width: 220,
                                child: Text(
                                  'Andsberger Allies 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              height: 48,
              width: 314,
              decoration: BoxDecoration(
                color: const Color(0xFFE14942),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                'Share Your Review',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )),
            ),
          ],
        ),
      ),
    );
  }

//  _buttonContainer() {
//     return Positioned(
//         bottom: 10,
//         right: 45,
//         child: GestureDetector(
//           onTap: () {
//             _bottomSheetPopUp();
//           },
//           child: Container(
//               height: 50,
//               width: 50,
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 15,
//                       offset: Offset(0, -3),
//                       color: Color(0xFF113240).withOpacity(0.2),
//                     )
//                   ],
//                   image:
//                       DecorationImage(image: AssetImage("images/lines.png")))),
//         ));
//   }

  Future<dynamic> _bottomSheetPopUp() {
    return showModalBottomSheet<dynamic>(
        // clipBehavior: BorderRadius.only(topLeft: Radius(20),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 650,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 202,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('lib/hart/images/Rectangle22.png'))),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffC4C4C4),
                            ),
                            child: Icon(
                              Icons.close,
                            )),
                      )),
                  Positioned(
                    bottom: 10,
                    right: 40,
                    child: Container(
                      height: 52,
                      width: 332,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDEDEA).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 8,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Distance'),
                                  Text('3 km',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xffE14942),
                                      ))
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 45,
                              top: 5,
                            ),
                            child: Row(
                              children: [
                                Text('Your Food is ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                                Text('18 min ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xffE14942),
                                    )),
                                Text('away',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 16, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Booking ID:',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            '#123456',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '12.00€',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffE14942)),
                                ),
                              )
                            ])),
                    Divider(height: 4),
                    Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Track Your Order',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 4),
                                        child: Text(
                                          'Order Status:',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff455A64)),
                                        ))
                                  ]),
                              Container(
                                height: 35,
                                width: 116,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE14942),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/hart/images/Vector4.png'),
                                    SizedBox(width: 5),
                                    Text(
                                      'Live Tracking',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: 27),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xffE14942),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xffE14942),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xff7B7E86),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9E9E9E),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Group.png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Placed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                '12:30 AM',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/frame.png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Confirmed',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'Your order has been confirmed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Frame (2).png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Processed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'We are preparing your order',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF9F9FB),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDADADA),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Frame (3).png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Shipped',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'Your order will be deliver at 01:30 AM',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                )),
              ],
            ),
          );
        });
  }

  Future<dynamic> _bottomSheetPopUp3() {
    return showModalBottomSheet<dynamic>(
        // clipBehavior: BorderRadius.only(topLeft: Radius(20),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 650,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 202,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('lib/hart/images/Rectangle22.png'))),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffC4C4C4),
                            ),
                            child: Icon(
                              Icons.close,
                            )),
                      )),
                  Positioned(
                    bottom: 10,
                    right: 40,
                    child: Container(
                      height: 52,
                      width: 332,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDEDEA).withOpacity(0.7),
                        // color: Colors.grey,

                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 8,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Distance'),
                                  Text('3 km',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xffE14942),
                                      ))
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 45,
                              top: 5,
                            ),
                            child: Row(
                              children: [
                                Text('Your Food is ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                                Text('18 min ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xffE14942),
                                    )),
                                Text('away',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 16, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Booking ID:',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            '#123456',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '12.00€',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffE14942)),
                                ),
                              )
                            ])),
                    Divider(height: 4),
                    Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Track Your Order',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 4),
                                        child: Text(
                                          'Order Status:',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff455A64)),
                                        ))
                                  ]),
                              Container(
                                height: 35,
                                width: 116,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE14942),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/hart/images/Vector4.png'),
                                    SizedBox(width: 5),
                                    Text(
                                      'Live Tracking',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          // margin: EdgeInsets.only(left: 30),

                          decoration: BoxDecoration(
                            // color: Color(0xffE14942),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'lib/hart/images/Rectangle31.png')),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
              ],
            ),
          );
        });
  }

  Future<dynamic> _bottomSheetPopUp2() {
    return showModalBottomSheet<dynamic>(
        // clipBehavior: BorderRadius.only(topLeft: Radius(20),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 770,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 202,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('lib/hart/images/Rectangle22.png'))),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffC4C4C4),
                            ),
                            child: Icon(
                              Icons.close,
                            )),
                      )),
                  Positioned(
                    bottom: 10,
                    right: 40,
                    child: Container(
                      height: 52,
                      width: 332,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDEDEA).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 8,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Distance'),
                                  Text('3 km',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xffE14942),
                                      ))
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 45,
                              top: 5,
                            ),
                            child: Row(
                              children: [
                                Text('Your Food is ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                                Text('18 min ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xffE14942),
                                    )),
                                Text('away',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 16, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Booking ID:',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            '#123456',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '12.00€',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffE14942)),
                                ),
                              )
                            ])),
                    Divider(height: 4),
                    Container(
                      child: Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 89,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE14942),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'lib/hart/images/Rectangle(1).png')),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('Fatija Pizza'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 89,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE14942),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'lib/hart/images/Rectangle(2).png')),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('Veg Pizza'),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 89,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE14942),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'lib/hart/images/Rectangle(3).png')),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          right: 20,
                          child: Container(
                            height: 89,
                            width: 110,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('+3 items',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                        height: 64,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Track Your Order',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 4),
                                        child: Text(
                                          'Order Status:',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff455A64)),
                                        ))
                                  ]),
                              Container(
                                height: 35,
                                width: 116,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE14942),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('lib/hart/images/Vector4.png'),
                                    SizedBox(width: 5),
                                    Text(
                                      'Live Tracking',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: 27),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xffE14942),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xffE14942),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE14942),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.done,
                                            size: 7.0, color: Colors.white)),
                                  ),
                                  Container(
                                    height: 57,
                                    width: 1,
                                    color: Color(0xff7B7E86),
                                  ),
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9E9E9E),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Group.png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Placed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                '12:30 AM',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/frame.png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Confirmed',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'Your order has been confirmed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFDF5EF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffE14942),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Frame (2).png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Processed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'We are preparing your order',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    // margin: EdgeInsets.all(10),
                                    height: 62,
                                    width: 314,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF9F9FB),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDADADA),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  // fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'lib/hart/images/Frame (3).png'))),
                                        ),
                                        // SizedBox(width: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, bottom: 15, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Order Shipped',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                'Your order will be deliver at 01:30 AM',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff7B7E86)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child:
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                )),
              ],
            ),
          );
        });
  }

  Container OrderProgress() {
    return Container(
      // margin: EdgeInsets.all(10),
      height: 62,
      width: 314,
      decoration: BoxDecoration(
        color: const Color(0xFFFDF5EF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 53,
            decoration: BoxDecoration(
                color: Color(0xffE14942),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage('lib/hart/images/frame.png'))),
          ),
          // SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Confirmed',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(height: 2),
                Text(
                  'Your order has been confirmed',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B7E86)),
                )
              ],
            ),
          )
        ],
      ),
      // child:
    );
  }
}
// return Container(
//     height: MediaQuery.of(context).size.height - 190,
//     child: Stack(
//       children: [
//         Positioned(
//             bottom: 0,
//             child: Container(
//               height: MediaQuery.of(context).size.height - 240,
//               width: MediaQuery.of(context).size.width,
//               color: Color(0xFFeef1f4).withOpacity(0.7),
//             )),
//         Positioned(
//             right: 46,
//             //left: 40,
//             child: Container(
//                 padding: EdgeInsets.only(top: 10, bottom: 20),
//                 // color: Colors.black,
//                 height: 200,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),
//                   color: const Color(0xFFE14942),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [],
//                 )))
//       ],
//     ));
