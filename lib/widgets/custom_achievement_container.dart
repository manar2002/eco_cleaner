import'package:flutter/material.dart';

import 'my_text.dart';
class CustomAchievementContainer extends StatelessWidget{
  late String image;
  late String service;
  late String address;
  late String date;
  late String name;
  CustomAchievementContainer({
    Key? key,
    required this.image,
    required this.service,
    required this.address,
    required this.date,
    required this.name,
  }): super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                  ]),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                    children: [
                          MyText(data: service, fontWeight: FontWeight.bold, fontSize: 20.0,),
                          const SizedBox(height: 10.0,),
                          Row(
                            children: [
                              const Icon(Icons.location_on, color: Colors.green,),
                              MyText(data: address, fontWeight: FontWeight.bold,),
                            ],
                          ),
                          const SizedBox(height: 5.0,),
                          Row(
                            children: [
                              const Icon(Icons.date_range_rounded, color: Colors.green,),
                              MyText(data: date,fontWeight: FontWeight.bold,),
                            ],
                          ),
                          const SizedBox(height: 5.0,),
                          Row(
                            children: [
                              const Icon(Icons.person, color: Colors.green,),
                              MyText(data: name,fontWeight: FontWeight.bold,),
                            ],
                          ),
                          const SizedBox(height: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyText(
                                          data: "Cleaned Successfully",
                                          color: Colors.green,
                                fontWeight: FontWeight.w600,
                                        ),
                            ],
                          ),
                    ],
                   ),
            ),
              ],
            ),
    );
  }
}

