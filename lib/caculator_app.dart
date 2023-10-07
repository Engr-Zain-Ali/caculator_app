import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'Button_UI.dart';

class Caculator extends StatefulWidget {
  const Caculator({super.key});

  @override
  State<Caculator> createState() => _CaculatorState();
}

class _CaculatorState extends State<Caculator> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.black,
      body: Column(
        children: [

          Padding(

            padding: const EdgeInsets.symmetric(vertical: 30),

            child: Expanded(

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,


                  children: [


                    Text(userInput.toString(),
                      style: TextStyle(fontSize: 25, color: Colors.white),),


                    Text(answer.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.orange),),


                  ]


              ),
            ),
          ),





          Column(
            children: [
              Row(
                children: [
                  MYZ(title: 'Ac', onpress: () {
                    userInput = '';
                    setState(() {

                    });
                  },),
                  MYZ(title: '+/-', onpress: () {
                    userInput += '+/-';
                    setState(() {

                    });
                  },),
                  MYZ(title: '%', onpress: () {
                    userInput += '%';
                    setState(() {

                    });
                  },),
                  MYZ(title: '/', onpress: () {
                    userInput += '/';
                    setState(() {

                    });
                  }, color: Colors.orange),
                ],

              ),
              Row(
                children: [
                  MYZ(title: '7', onpress: () {
                    userInput += '7';
                    setState(() {

                    });
                  },),
                  MYZ(title: '8', onpress: () {
                    userInput += '8';
                    setState(() {

                    });
                  },),
                  MYZ(title: '0', onpress: () {
                    userInput += '0';
                    setState(() {

                    });
                  },),
                  MYZ(title: 'x', onpress: () {
                    userInput += 'x';
                    setState(() {

                    });
                  }, color: Colors.orange),
                ],

              ),
              Row(
                children: [
                  MYZ(title: '4', onpress: () {
                    userInput += '4';
                    setState(() {

                    });
                  },),
                  MYZ(title: '5', onpress: () {
                    userInput += '5';
                    setState(() {

                    });
                  },),
                  MYZ(title: '6', onpress: () {
                    userInput += '6';
                    setState(() {

                    });
                  },),
                  MYZ(title: '-', onpress: () {
                    userInput += '-';
                    setState(() {

                    });
                  }, color: Colors.orange),
                ],

              ),
              Row(
                children: [
                  MYZ(title: '1', onpress: () {
                    userInput += '1';
                    setState(() {

                    });
                  },),
                  MYZ(title: '2', onpress: () {
                    userInput += '2';
                    setState(() {

                    });
                  },),
                  MYZ(title: '3', onpress: () {
                    userInput += '3';
                    setState(() {

                    });
                  },),
                  MYZ(title: '+', onpress: () {
                    userInput += '+';
                    setState(() {

                    });
                  }, color: Colors.orange),
                ],

              ),
              Row(
                children: [
                  MYZ(title: '0', onpress: () {
                    userInput += '0';
                    setState(() {

                    });
                  },),
                  MYZ(title: '-', onpress: () {
                    userInput += '-';
                    setState(() {

                    });
                  },),
                  MYZ(title: 'del', onpress: () {
                    userInput=userInput.substring(0,userInput.length-1);
                    setState(() {

                    });
                  },),
                  MYZ(title: '=', onpress: () {
                    equalpress();
                    setState(() {

                    });

                  }, color: Colors.orange),
                ],

              ),
            ],
          ),

        ],
      ),

    );
  }

  void equalpress() {
    String finalUserInput=userInput;
    finalUserInput=userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
