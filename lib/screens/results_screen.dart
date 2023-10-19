import 'package:flutter/material.dart';
import 'package:flutter_calculadora_imc/models/constants.dart';
import 'package:flutter_calculadora_imc/screens/principal_screen.dart';
import 'package:flutter_calculadora_imc/widgets/bottom_button.dart';
import 'package:flutter_calculadora_imc/widgets/cards.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.resultIMC,
      required this.resultText,
      required this.interpretation});

  final String resultIMC;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULADORA IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "RESULTADO",
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Cards(
              theColor: corCardPadrao,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    resultIMC,
                    style: imcTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: explanationTextStyle,
                  ),
                ],
              ),
              atPressing: () {},
            ),
          ),
          BottomButton(
              atPressing: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrincipalScreen(),
                  ),
                );
              },
              bottomTitle: "RECALCULAR")
        ],
      ),
    );
  }
}
