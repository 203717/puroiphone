import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/screens/onboarding/components/content_boarding.dart';

import 'content_page.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;

  List<Map<dynamic, dynamic>> boardingData = [
    {
      'title': 'A',
      'title2': 'B',
      'image': 'assets/img/icon.jpg',
    },
    {
      'title': 'C',
      'title2': 'D',
      'image': 'assets/img/icon.jpg',
    },
    {
      'title': 'E',
      'title2': 'F',
      'image': 'assets/img/icon.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            flex: 3,
            child: PageView.builder(
              itemBuilder: (context, index) => ContentBoarding(
                title: boardingData[index]['title'],
                title2: boardingData[index]['title2'],
                image: boardingData[index]['image'],
              ),
              itemCount: boardingData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            )),
        Expanded(flex: 2, child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                List.generate(
                  boardingData.length, 
                   (index) => page(index: index, currentPage: currentPage),
                   ),
            ),
          ],
        )),
      ],
    ));
  }
}
