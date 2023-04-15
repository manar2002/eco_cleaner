import 'package:eco_cleaner/widgets/custom_app_bar.dart';
import 'package:eco_cleaner/widgets/custom_achievement_container.dart';
import 'package:eco_cleaner/widgets/my_text.dart';
import 'package:flutter/material.dart';

class AchievementsView extends StatefulWidget {
  const AchievementsView({Key? key}) : super(key: key);

  @override
  _AchievementsViewState createState() => _AchievementsViewState();
}

class _AchievementsViewState extends State<AchievementsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  MyText(data: "Achievements", color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold,),
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemCount: 3,
                        itemBuilder: (BuildContext context,int index){
                        return CustomAchievementContainer(
                          image: images[index],
                          service: services[index],
                          address: addresses[index],
                          date: dates[index],
                          name: names[index],
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
  "images/1.png",
  "images/2.png",
  "images/3.png",
];

List<String> services = [
  "Painting walls",
  "Painting walls",
  "Cleaning & Painting",
];

List<String> addresses = [
  "Old Cairo",
  "Ahmed Maher Street",
  "Omar Afandy Street",
];

List dates = [
  "12-2-2023",
  "25-2-2023",
  "22-2-2023",
];

List names = [
  "Ahmed Hani",
  "Omar Sherif",
  "Ahmed Mahmoud",
];


