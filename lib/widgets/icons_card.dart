import 'package:flutter/material.dart';
import 'package:flutter_calculadora_imc/models/constants.dart';



class IconsCard extends StatelessWidget {
  const IconsCard({super.key, required this.iconsCard, required this.descricao});
  
  final IconData iconsCard;
  final String descricao;  


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconsCard, size: 95, color: const Color.fromARGB(255, 93, 43, 180),),
        const SizedBox(
          height: 15,
        ),
        Text(descricao, style: descricaoTextStyle),
      ],
    );
  }
}