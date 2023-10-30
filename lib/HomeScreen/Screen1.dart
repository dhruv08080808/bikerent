import 'package:bikerent/constants/color.dart';
import 'package:bikerent/constants/textstyle.dart';
import 'package:bikerent/widgets/txtformfield.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List status = ['Available', ' Booked'];
  List viewednamed = ['Hayabusa', 'Classic 350'];
  List bikename = ['Adventure', 'Crusier', 'SportsBike', 'Tourer'];
  List selected = [];
  List Bikes = [
    'assets/images/bike1.webp',
    'assets/images/scount2x.webp',
    'assets/images/honda.webp'
  ];
  List Brand = ['Royal Enfield', 'Indian', 'Honda'];
  List Price = ['699/', '1499/', '1199/'];
  List bikenamee = ['Meteore', 'Scout Bobber', 'Rebel 1100'];
  List day = ['per day', 'per day', 'per day'];
  List smallbike = [
    'assets/images/hayabusa2.webp',
    'assets/images/hayabusa2.webp'
  ];
  List Price2 = ['2000/', '1500/'];
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Row(children: [
                    Image.asset(
                      'assets/images/profilepic.webp',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 14),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome', style: robo_400_12_8C7E7E),
                          Text(
                            'Abhi Tiwari',
                            style: robo_500_14,
                          )
                        ])
                  ])),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Cwithtext(
                    color: kEFEEEE,
                    txtform: TextFormField(
                      controller: searchcontroller,
                      decoration: InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 13, left: 14),
                            child: Image(
                              image: AssetImage('assets/images/search.webp'),
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: 'Search Bike',
                          hintStyle: robo_500_20_D2CFCF,
                          contentPadding:
                              EdgeInsets.only(top: 18, bottom: 19, left: 53)),
                    ),
                    height: 60,
                    radius: 20),
              ),
              SizedBox(height: 32),
              SizedBox(
                height: 51,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        final _iselected = selected.contains(i);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_iselected) {
                                selected.remove(i);
                              } else {
                                selected.add(i);
                              }
                            });
                          },
                          child: Container(
                            height: 194,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color:
                                          _iselected ? k000000 : Colors.white,
                                      border: Border.all(color: kBABABA),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                        child: Text(
                                      bikename[i],
                                      style: _iselected
                                          ? robo_400_18_FFF
                                          : robo_400_18,
                                    ))),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, i) {
                        return SizedBox(width: 5);
                      },
                      itemCount: bikename.length),
                ),
              ),
              SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: robo_700_21,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'items',
                      style: robo_300_18,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 252,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return Container(
                          width: 143,
                          height: 225,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 143,
                                  height: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: kBABABA),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          Bikes[i],
                                          // height: 158,
                                          // width: ,
                                        ),
                                        Text(
                                          bikenamee[i],
                                          style: robo_700_18,
                                        ),
                                        Text(
                                          Brand[i],
                                          style: robo_400_18_slab,
                                        ),
                                        SizedBox(height: 7),
                                        Row(
                                          children: [
                                            Text(
                                              Price[i],
                                              style: ris_400_18,
                                            ),
                                            Text(
                                              day[i],
                                              style: ris_300_17,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 12),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, i) {
                        return SizedBox(width: 12);
                      },
                      itemCount: Bikes.length),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recently',
                      style: robo_700_21,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'viewed',
                      style: robo_300_18,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 252,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, i) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: k8C7E7E),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, top: 9, bottom: 6),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border:
                                                    Border.all(color: kBABABA)),
                                            child: Image.asset(
                                              smallbike[i],
                                              height: 35,
                                              width: 45,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Text(
                                              viewednamed[i],
                                              style: robo_700_18,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  Price2[i],
                                                  style: ris_400_18,
                                                ),
                                                Text(
                                                  day[i],
                                                  style: ris_300_17,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        // Text(
                                        //   Brand[i],
                                        //   style: robo_400_18_slab,
                                        // ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 16, bottom: 16, right: 19),
                                          child: Container(
                                            width: 70,
                                            height: 22,
                                            alignment: Alignment.centerRight,
                                            decoration: BoxDecoration(
                                                color: kBFC5BF,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2),
                                              child: Center(
                                                child: Text(
                                                  status[i],
                                                  style: robo_400_15,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 12),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, i) {
                        return SizedBox(width: 12);
                      },
                      itemCount: smallbike.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
