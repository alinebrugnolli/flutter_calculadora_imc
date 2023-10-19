
import 'package:flutter/material.dart';

class CircularBottom extends StatelessWidget {
  const CircularBottom({super.key, required this.icon, required this.atPressing,});

  final IconData icon;
  final Function()? atPressing;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed:atPressing,
      elevation: 6.0,
      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 170, 145, 238),child: Icon(icon),
    );
  }
}
