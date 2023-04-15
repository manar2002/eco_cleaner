import 'package:eco_cleaner/main.dart';
import 'package:eco_cleaner/widgets/my_text.dart';
import 'package:eco_cleaner/widgets/search_field.dart';
import 'package:flutter/material.dart';

class CustomAppBarTwo extends StatefulWidget {
  const CustomAppBarTwo({Key? key}) : super(key: key);

  @override
  _CustomAppBarTwoState createState() => _CustomAppBarTwoState();
}

class _CustomAppBarTwoState extends State<CustomAppBarTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(data: "ECOCLEANER", color: Colors.green, fontSize: 25.0,),
            const SizedBox(height: 10.0,),
            MyText(
              data: "Discover",
              color: Colors.black,
              fontSize: 30.0,),
            MyText(
              data: "Cleaning Services",
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,),
            const SizedBox(height: 10.0,),
            const Padding(padding: EdgeInsets.all(50.0),
                child: SearchField()),
            const SizedBox(height: 10.0,),
            MyText(
              data: "Choose Services",
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 80.0, height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.greenAccent.shade100,
                      ),
                      child: Image.asset(getAsset("cleaning")),
                    ),
                    MyText(data: "Cleaning", fontWeight: FontWeight.bold,),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80.0, height: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent.shade100,
                      ),
                      child: Image.asset(getAsset("painting")),
                    ),
                    MyText(data: "Painting",fontWeight: FontWeight.bold,),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80.0, height: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent.shade100,
                      ),
                      child: Image.asset(getAsset("charities")),
                    ),
                    MyText(data: "Charities", fontWeight: FontWeight.bold,),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80.0, height: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.greenAccent.shade100,
                      ),
                      child: Image.asset(getAsset("more")),
                    ),
                    MyText(data: "More", fontWeight: FontWeight.bold,),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}