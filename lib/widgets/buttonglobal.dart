import 'package:flutter/material.dart';

class ButtonGlobalTeste extends StatelessWidget {
  final String textButton;
  final double widthButton;
  final Color colorButton;
  final Color textColor;
  final double heightButton;

  const ButtonGlobalTeste(
      {Key? key,
      required this.textButton,
      required this.widthButton,
      required this.colorButton,
      required this.textColor,
      required this.heightButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: heightButton,
      decoration: BoxDecoration(
        border:
            Border.all(width: 2, color: const Color.fromRGBO(125, 96, 161, 1)),
        borderRadius: BorderRadius.circular(30),
        color: colorButton,
      ),
      child: TextButton(
          onPressed: comecarShopping,
          child: Text(
            textButton,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
          )),
    );
  }

  void comecarShopping() {
    // ignore: avoid_print
    print("Voce começou a comprar");
  }
}
