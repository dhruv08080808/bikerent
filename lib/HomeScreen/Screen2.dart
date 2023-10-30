import 'package:bikerent/constants/color.dart';
import 'package:bikerent/constants/textstyle.dart';
import 'package:bikerent/widgets/container.dart';
import 'package:flutter/material.dart';

class Scree extends StatefulWidget {
  const Scree({super.key});

  @override
  State<Scree> createState() => _ScreeState();
}

class _ScreeState extends State<Scree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 31, left: 22, right: 19),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/arrow.webp',
                    height: 30,
                    width: 30,
                  ),
                  Spacer(),
                  Container(
                      width: 274,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: kBABABA)),
                      child: Center(
                          child: Text(
                        'Bike Details',
                        style: robo_500_25,
                      )))
                ],
              ),
              SizedBox(height: 33),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Indian',
                        style: robo_400_22_slab,
                      ),
                      Text(
                        'Scout Bobber',
                        style: robo_700_21,
                      ),
                      SizedBox(height: 29),
                      Cwithtextt(
                          clm: Padding(
                              padding: const EdgeInsets.only(
                                  top: 7, left: 10, bottom: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Category',
                                    style: robo_400_18_8C7E7E,
                                  ),
                                  Text(
                                    'Cruiser',
                                    style: robo_400_18,
                                  )
                                ],
                              ))),
                      SizedBox(height: 29),
                      Cwithtextt(
                          clm: Padding(
                              padding: const EdgeInsets.only(
                                  top: 7, left: 10, bottom: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Displacement',
                                    style: robo_400_18_8C7E7E,
                                  ),
                                  Text(
                                    '1133 cc',
                                    style: robo_400_18,
                                  )
                                ],
                              ))),
                    ],
                  ),
                  SizedBox(width: 14),
                  Stack(
                    children: [
                      Container(
                        width: 201,
                        height: 282,
                        decoration: BoxDecoration(
                            color: kBABABA,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: kBABABA)),
                        child: Column(
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 29),
              Row(
                children: [
                  Cwithtextt(
                      clm: Padding(
                          padding: const EdgeInsets.only(
                              top: 7, left: 10, bottom: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Max. Speed',
                                style: robo_400_18_8C7E7E,
                              ),
                              Text(
                                '124 km/h',
                                style: robo_400_18,
                              )
                            ],
                          ))),
                  SizedBox(width: 4),
                  // Container(
                  //   width: 200,
                  //   decoration: BoxDecoration(
                  //       color: k000000,
                  //       borderRadius: BorderRadius.circular(20),
                  //       border: Border.all(color: kBABABA)),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Rent',
                  //         style: robo_700_25_FFF,
                  //       ),

                  //     ],
                  //   ),
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
