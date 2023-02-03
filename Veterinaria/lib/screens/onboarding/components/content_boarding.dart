import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    super.key,
    this.titulo,
    this.info,
    this.image,
  });

  final String? titulo, info, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 300,
            height: 300,
            child: Image.asset(image!),
          ),
        Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(titulo!, style: TextStyle(
            color: Colors.purple,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 1),
          child: Text(info!, textAlign: TextAlign.center, style: TextStyle(
            fontSize: 15,
            )),
        ),
        
      ],
    );
  }
}
