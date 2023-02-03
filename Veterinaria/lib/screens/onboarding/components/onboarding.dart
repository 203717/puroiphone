import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto/screens/onboarding/components/content_boarding.dart';
import 'package:proyecto/screens/onboarding/components/content_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  PageController _index = PageController();

  void _siguiente() {
    if (currentPage < boardingData.length-1) {
      setState(() {
        currentPage += 1;
      });
      _index.jumpToPage(currentPage);
    }
    else{
      setState(() {
        currentPage = 0;
      });
      _index.jumpToPage(currentPage);
    }
  }

  void _volver() {
    if (currentPage ==0) {
      setState(() {
        currentPage =4;
      });
      _index.jumpToPage(currentPage);
    }
    else{
      setState(() {
        currentPage -=1;
      });
      _index.jumpToPage(currentPage);
    }
  }

  List<Map<dynamic, dynamic>> boardingData = [
    {
      'titulo': 'Esparcimiento',
      'info': 'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/img/B1.png',
    },
    {
      'titulo': 'ADOPCION',
      'info':
          '¿Por que comprar cuando puedes adoptar?',
      'image': 'assets/img/B2.png',
    },
    {
      'titulo': 'Hospitalidad',
      'info':
          'Cuando los perros entrar te dicen wau wau',
      'image': 'assets/img/B3.png',
    },
    {
      'titulo': 'Veterinaria',
      'info':
          'A nadie le gusta las inyecciones, ay no que feo caso',
      'image': 'assets/img/B4.png',
    },
    {
      'titulo': 'Tienda',
      'info': 'uwu',
      'image': 'assets/img/B5.png',
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            flex: 4,
            child: PageView.builder(
              controller: _index,
              itemBuilder: (context, index) => ContentBoarding(
                image: boardingData[index]['image'],
                titulo: boardingData[index]['titulo'],
                info: boardingData[index]['info'],
              ),
              itemCount: boardingData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            )),
        Expanded(
            flex: 2,child:Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: const Text('Atras'),
                        style: TextButton.styleFrom(primary: Colors.pink,),
                        onPressed:_volver, ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: _index,
                          count: 5,
                           effect:  ExpandingDotsEffect(
                            dotColor:  Colors.grey,  
                            activeDotColor:  Colors.pink  
                           )
                        ),
                      ),
                      TextButton(
                        child: const Text('Siguiente'),
                        style: TextButton.styleFrom(primary: Colors.pink,),
                        onPressed: _siguiente, ),
                    ],
                  )
                ),
              ],
            )),
        ),],
    ));
  }
}
