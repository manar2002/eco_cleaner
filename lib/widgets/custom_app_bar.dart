import 'package:eco_cleaner/widgets/my_text.dart';
import 'package:eco_cleaner/widgets/search_field.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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
                data: "Our",
                color: Colors.black,
                fontSize: 30.0,),
              MyText(
                data: "Achievements",
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,),
              const SizedBox(height: 10.0,),
              const Padding(padding: EdgeInsets.all(50.0),
                  child: SearchField()),
              const SizedBox(height: 10.0,),
            ]),
    );
  }
}