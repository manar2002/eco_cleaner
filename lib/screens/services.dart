import 'package:eco_cleaner/widgets/custom_appbar2.dart';
import 'package:eco_cleaner/widgets/my_text.dart';
import 'package:eco_cleaner/widgets/recommended_item.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  _ServicesViewState createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomAppBarTwo(),
              MyText(data: "Recommended", color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold,),
              const SizedBox(height: 5.0,),
              SizedBox(
                height: 400,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context,int index){
                      return CustomRecommendedContainer(
                        image: getAsset(images[index]),
                        name: names[index],
                        place: places[index],
                        time: times[index],
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List images = [
  'p1',
  'p2',
];


List<String> places = [
  "New Cairo",
  "Garden City",
];

List times = [
  "10 am - 5 pm",
  "10 am - 5 pm",
];

List names = [
  "Ahmed Mahmoud",
  "Omar Sherif",
];


