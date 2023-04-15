import 'package:eco_cleaner/widgets/confirm_button.dart';
import 'package:eco_cleaner/widgets/my_text.dart';
import 'package:flutter/material.dart';
import '../widgets/post_template.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(data: "ECOCLEANER", color: Colors.green, fontSize: 25.0,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.post_add_rounded, color: Colors.green,)),
                    ],
                  ),
              const SizedBox(height: 15.0,),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/user.png"),
              ),
              const SizedBox(height: 5.0),
              MyText(
                data: "Ahmed Omar",
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on),
                  MyText(data: "Minia, Egypt"),
                ],
              ),
              const SizedBox(height: 10.0),
              TextField(
                minLines: 1,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Write for helping in cleaning!",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
              const SizedBox(height: 5.0,),
              const Padding(
                padding: EdgeInsets.only(right: 140.0, left: 170.0),
                child: ConfirmButton(title: "post"),
              ),
              const SizedBox(height: 5.0,),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 5.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    data: "Previous posts",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ],
              ),
              const SizedBox(height: 5.0,),
              const SizedBox(height: 5.0,),
              const PostTemplate(
                image1Url: 'assets/images/2.png',
                image2Url: 'assets/images/3.png',
                profileImageUrl: 'images/user.png',
                text:
                'While i walked in Zamalek, i saw some garbage which make the street looks bad and people can’t walk in it, so if anyone can help in cleaning it this will be awesome.',
                time: ' 2 hours ago',
                username: ' Ahmed Ali',
              ),
            ]),
          ),
        ),
      );
  }
}
