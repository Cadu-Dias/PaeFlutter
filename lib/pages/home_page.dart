import 'package:flutter/material.dart';
import 'package:hands_on/widgets/buttonglobal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
              fontSize: 40,
              fontFamily: AutofillHints.name,
              color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(125, 96, 161, 1),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Every Purchase Will be Made With Pleasure",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            const Text(
              "Buy and Enjoy",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            const ButtonGlobalTeste(
              textButton: "Start Shopping",
              widthButton: 320,
              colorButton: Color.fromRGBO(125, 96, 161, 1),
              textColor: Colors.white,
              heightButton: 50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.09,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ButtonGlobalTeste(
                    textButton: "Learn More",
                    widthButton: 150,
                    colorButton: Colors.white,
                    textColor: Colors.black,
                    heightButton: 50),
                if (MediaQuery.of(context).size.width > 600)
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.009,
                  ),
                const ButtonGlobalTeste(
                    textButton: "Login",
                    widthButton: 150,
                    colorButton: Colors.white,
                    textColor: Colors.black,
                    heightButton: 50)
              ],
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: home,
          backgroundColor: const Color.fromRGBO(125, 96, 161, 1),
          child: const Icon(Icons.home, color: Colors.white, size: 40,),
          ),
    ));
  }

  void home() {
    print("home");
  }
}
