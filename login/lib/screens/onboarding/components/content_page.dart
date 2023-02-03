import 'package:flutter/material.dart';

AnimatedContainer page({int?index, int? currentPage }){
  return AnimatedContainer(
    duration: kThemeAnimationDuration, margin: const EdgeInsets.only(right: 8), 
  height: 10, 
  width: currentPage==index? 20:15,
  decoration: BoxDecoration(
    color: currentPage==index?Colors.blue : Colors.grey 
    ),
  );
}