import'package:flutter/material.dart';

import 'confirm_button.dart';
import 'my_text.dart';
class CustomRecommendedContainer extends StatelessWidget{
  late String image;
  late String name;
  late String place;
  late String time;
  CustomRecommendedContainer({
    Key? key,
    required this.image,
    required this.name,
    required this.place,
    required this.time,
  }): super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Column(
              children: [
                Image.asset(image, height: 70, width: 70,),
              ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                MyText(data: name, fontWeight: FontWeight.bold, fontSize: 20.0,),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.greenAccent.shade700,),
                    MyText(data: place, fontWeight: FontWeight.bold,),
                  ],
                ),
                const SizedBox(height: 5.0,),
                Row(
                  children: [
                    Icon(Icons.timelapse, color: Colors.greenAccent.shade700,),
                    MyText(data: time,fontWeight: FontWeight.bold,),
                  ],
                ),
                const SizedBox(height: 5.0,),
                Row(
                  children: const [
                    ConfirmButton(title: "Choose",)
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

