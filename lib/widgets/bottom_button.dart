
import 'package:flutter/material.dart';
import 'package:flutter_calculadora_imc/models/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.atPressing, required this.bottomTitle});

  final Function()? atPressing;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: atPressing,
      child: Container(
        color: corCardInferior,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: alturaMargemInferior,
        child: Center(
          child: Text(
            bottomTitle,
            style: bigBottomTextStyle,
          ),
        ),
      ),
    );
  }
}
