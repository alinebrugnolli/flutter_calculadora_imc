import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.theColor,  required this.childCard, required this.atPressing });

  final Color theColor;
  final Widget childCard;
  final Function()? atPressing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: atPressing,   
      child: Container(          
        margin: const EdgeInsets.all(10), 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
          color: theColor,
      ),  
        child: childCard,       
      ),
    );
  }
} 
