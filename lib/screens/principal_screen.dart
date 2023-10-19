import 'package:flutter/material.dart';
import 'package:flutter_calculadora_imc/models/imc_calculator.dart';
import 'package:flutter_calculadora_imc/screens/results_screen.dart';
import 'package:flutter_calculadora_imc/widgets/bottom_button.dart';
import 'package:flutter_calculadora_imc/widgets/cards.dart';
import 'package:flutter_calculadora_imc/models/constants.dart';
import 'package:flutter_calculadora_imc/widgets/circular_bottom.dart';
import 'package:flutter_calculadora_imc/widgets/icons_card.dart';

enum Sexo {
  feminino,
  masculino,
}

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  Sexo? sexoSelecionado;
  int altura = 110;
  int peso = 50;
  int idade = 1;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Calculadora de IMC",
          ),
          centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Cards(
                  atPressing: () {
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
                  theColor: sexoSelecionado == Sexo.feminino
                      ? corCardPadrao
                      : corCardInativa,
                  childCard: const IconsCard(
                    iconsCard: Icons.female,
                    descricao: 'FEMININO',
                  ),
                )),
                Expanded(
                    child: Cards(
                        atPressing: () {
                          setState(() {
                            sexoSelecionado = Sexo.masculino;
                          });
                        },
                        theColor: sexoSelecionado == Sexo.masculino
                            ? corCardPadrao
                            : corCardInativa,
                        childCard: const IconsCard(
                            iconsCard: Icons.male, descricao: 'MASCULINO'))),
              ],
            ),
          ),
          Expanded(
              child: Cards(
            theColor: corCardPadrao,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ALTURA",
                  style: descricaoTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      altura.toString(),
                      style: numeroTextStyle,
                    ),
                    const Text(
                      "cm",
                      style: descricaoTextStyle,
                    ),
                  ],
                ),
                Slider(
                  activeColor: const Color.fromARGB(255, 93, 43, 180),
                  inactiveColor: const Color.fromARGB(255, 170, 145, 238),
                  value: altura.toDouble(),
                  min: 110.0,
                  max: 220.0,
                  onChanged: (double novoValor) {
                    setState(() {
                      altura = novoValor.round();
                    });
                  },
                )
              ],
            ),
            atPressing: () {},
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Cards(
                  theColor: corCardPadrao,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "PESO",
                        style: descricaoTextStyle,
                      ),
                      Text(
                        peso.toString(),
                        style: numeroTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularBottom(
                            atPressing: () {
                              setState(() {
                                peso--;
                              });
                            },
                            icon: Icons.remove,
                          ),
                          const SizedBox(
                            width: 9.0,
                          ),
                          CircularBottom(
                            atPressing: () {
                              setState(() {
                                peso++;
                              });
                            },
                            icon: Icons.add,
                          ),
                        ],
                      ),
                    ],
                  ),
                  atPressing: () {},
                )),
                Expanded(
                    child: Cards(
                  theColor: corCardPadrao,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "IDADE",
                        style: descricaoTextStyle,
                      ),
                      Text(
                        idade.toString(),
                        style: numeroTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularBottom(
                            atPressing: () {
                              setState(() {
                                idade--;
                              });
                            },
                            icon: Icons.remove,
                          ),
                          const SizedBox(
                            width: 9.0,
                          ),
                          CircularBottom(
                            atPressing: () {
                              setState(() {
                                idade++;
                              });
                            },
                            icon: Icons.add,
                          ),
                        ],
                      ),
                    ],
                  ),
                  atPressing: () {},
                )),
              ],
            ),
          ),
          BottomButton(
              atPressing: () {                
                CalculatorIMC calc = CalculatorIMC(
                  altura = altura, 
                  peso = peso,
                  ); 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      resultIMC: calc.calculateIMC() ,
                      resultText: calc.getResults(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
              bottomTitle: "CALCULAR"),
        ],
      ),
    );
  }
}
