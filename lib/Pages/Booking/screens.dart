import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //code will run when widget rendering complete
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 36, right: 16, left: 16, bottom: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              child: const Text('My Bookings',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  )),
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Container(
                          child:
                              Image.asset('assets/images/Booking/Group3.png')),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffE14942),
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 5,
                        //     spreadRadius: 1,
                        //   )
                        // ],
                      ),
                      child: Container(
                          child: Image.asset(
                              'assets/images/Booking/systemunicorns.png')),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
        Container(
          height: 140,
          child: Stack(children: [
            Center(
              child: Container(
                height: 123,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/Booking/Rectangle 1.png'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Booking/Waiters-pana 1.png'),
                  Image.asset('assets/images/Booking/Vector 20.png'),
                  Image.asset('assets/images/Booking/Makeup artist-pana 1.png'),
                ],
              ),
            ),
            Positioned(
                bottom: 8,
                left: 60,
                child: Image.asset('assets/images/Booking/Vector 21.png')),
            Container(
              child: Positioned(
                  // top: 110,
                  bottom: 0,
                  left: 100,
                  child: Row(
                    children: [
                      Image.asset('assets/images/Booking/Ellipse 41.png'),
                      const SizedBox(width: 185),
                      Image.asset('assets/images/Booking/Ellipse 5.png'),
                    ],
                  )),
            ),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color(0xff9E9E9E),
            width: 0.4,
          ))),
          child: TabBar(
            controller: _tabController,
            labelColor: Color(0xffE14942),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            indicatorColor: Color(0xffE14942),
            unselectedLabelColor: Color(0xff9E9E9E),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Pending',
                ),
              ),
              Tab(
                child: Text(
                  'Running',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Completed',
                ),
              ),
              Tab(
                child: Text(
                  'Cancelled',
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
                    Pending1(),
                    Pending2(),
                    Pending3(),
                  ]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Running1(),
                    Running2(),
                    Running3(),
                  ]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Completed1(),
                    Completed2(),
                    Completed3(),
                  ]),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(children: [
                    Cancelled1(),
                    Cancelled2(),
                    Cancelled3(),
                  ]),
                ),

                // Container(),

                // Container(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Padding Pending1() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle111.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Booked',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '50.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _bottomSheetPopUp();
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle13.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Pending2() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle15.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Salad',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '30.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 17.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Pending3() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle14.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Salad',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '100.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 16.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Running1() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle111.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Booked',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '50.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle13.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Completed1() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle111.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFF5DC862))),
                                        child: Icon(Icons.done,
                                            size: 12,
                                            color: Color(0XFF5DC862))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Delivered',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Completed',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '50.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle13.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'Share Your Review',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Cancelled1() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle111.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFFE14942))),
                                        child: Icon(Icons.close,
                                            size: 12,
                                            color: Color(0XFFE14942))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Cancelled',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '50.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle13.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'See Cancellation Reason',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Running2() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle15.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Salad',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '30.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 17.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //   right: 0,
            //   child: Container(
            //       height: 19,
            //       width: 32,
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFE14942),
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(9.0),
            //             bottomLeft: Radius.circular(9.5)),
            //       ),
            //       child: Center(
            //         child: Text('1',
            //             style: TextStyle(
            //               fontWeight: FontWeight.w400,
            //               fontSize: 12,
            //               color: Colors.white,
            //             )),
            //       )),
            // )
          ],
        ));
  }

  Padding Completed2() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle15.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Salad',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFF5DC862))),
                                        child: Icon(Icons.done,
                                            size: 12,
                                            color: Color(0XFF5DC862))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Delivered',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Completed',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '30.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 17.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'Share Your Review',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //   right: 0,
            //   child: Container(
            //       height: 19,
            //       width: 32,
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFE14942),
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(9.0),
            //             bottomLeft: Radius.circular(9.5)),
            //       ),
            //       child: Center(
            //         child: Text('1',
            //             style: TextStyle(
            //               fontWeight: FontWeight.w400,
            //               fontSize: 12,
            //               color: Colors.white,
            //             )),
            //       )),
            // )
          ],
        ));
  }

  Padding Cancelled2() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle15.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Chicken Salad',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFFE14942))),
                                        child: Icon(Icons.close,
                                            size: 12,
                                            color: Color(0XFFE14942))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Cancelled',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '30.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 17.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'See Cancellation Reason',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

  Padding Running3() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle14.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Fajita Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff263238),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '100.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 16.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //   right: 0,
            //   child: Container(
            //       height: 19,
            //       width: 32,
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFE14942),
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(9.0),
            //             bottomLeft: Radius.circular(9.5)),
            //       ),
            //       child: Center(
            //         child: Text('2',
            //             style: TextStyle(
            //               fontWeight: FontWeight.w400,
            //               fontSize: 12,
            //               color: Colors.white,
            //             )),
            //       )),
            // )
          ],
        ));
  }

  Padding Completed3() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle14.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Fajita Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFF5DC862))),
                                        child: Icon(Icons.done,
                                            size: 12,
                                            color: Color(0XFF5DC862))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Delivered',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Completed',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '100.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 16.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // child:
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'Share Your Review',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //   right: 0,
            //   child: Container(
            //       height: 19,
            //       width: 32,
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFE14942),
            //         borderRadius: BorderRadius.only(
            //             topRight: Radius.circular(9.0),
            //             bottomLeft: Radius.circular(9.5)),
            //       ),
            //       child: Center(
            //         child: Text('2',
            //             style: TextStyle(
            //               fontWeight: FontWeight.w400,
            //               fontSize: 12,
            //               color: Colors.white,
            //             )),
            //       )),
            // )
          ],
        ));
  }

  Padding Cancelled3() {
    return Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 10, bottom: 10),
        child: Stack(
          children: [
            Container(
                height: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: const Color(0xFFDADADA)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      color: Color(0XFFF9F9FB),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 11.0, right: 15.0),
                            child: Container(
                              height: 93,
                              width: 129,
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Booking/Rectangle14.png'))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Booking ID: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff9E9E9E),
                                            )),
                                        Text(
                                          '#128394',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Fajita Pizza',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Cheese canned black beans',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff9E9E9E),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 9, bottom: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                              ),
                              child: Container(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0XFFE14942))),
                                        child: Icon(Icons.close,
                                            size: 12,
                                            color: Color(0XFFE14942))),
                                    SizedBox(height: 5),
                                    Text(
                                      'Cancelled',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 30,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '100.00 €',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                            'assets/images/Booking/Rectangle 16.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Restaurant name',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xff7B7E86),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'SkyKitchen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xffE14942),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // child:
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Container(
                        height: 62,
                        width: 350,
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFE14942),
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/Booking/locationinfo.png'))),
                              ),
                            ),
                            // SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 5,
                                left: 10,
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Andsberger Alle 65 im andel\'s Hotel Berlin, 12369 Berlin',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xff7B7E86),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // child:
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 48,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE14942),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Text(
                            'See Cancellation Reason',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              right: 0,
              child: Container(
                  height: 19,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE14942),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.5)),
                  ),
                  child: Center(
                    child: Text('2',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ));
  }

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
                            image: AssetImage(
                                'assets/images/Booking/Rectangle22.png'))),
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
                                    Image.asset(
                                        'assets/images/Booking/Vector4.png'),
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
                                                      'assets/images/Booking/Group.png'))),
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
                                                      'assets/images/Booking/frame.png'))),
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
                                                      'assets/images/Booking/Frame (2).png'))),
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
                                                      'assets/images/Booking/Frame (3).png'))),
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
                            image: AssetImage(
                                'assets/images/Booking/Rectangle22.png'))),
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
                                    Image.asset(
                                        'assets/images/Booking/Vector4.png'),
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
                                    'assets/images/Booking/Rectangle31.png')),
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
                            image: AssetImage(
                                'assets/images/Booking/Rectangle22.png'))),
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
                                            'assets/images/Booking/Rectangle(1).png')),
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
                                            'assets/images/Booking/Rectangle(2).png')),
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
                                            'assets/images/Booking/Rectangle(3).png')),
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
                                    Image.asset(
                                        'assets/images/Booking/Vector4.png'),
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
                                                      'assets/images/Booking/Group.png'))),
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
                                                      'assets/images/Booking/frame.png'))),
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
                                                      'assets/images/Booking/Frame (2).png'))),
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
                                                      'assets/images/Booking/Frame (3).png'))),
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
                    image: AssetImage('assets/images/Booking/frame.png'))),
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
