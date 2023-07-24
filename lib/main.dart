import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeLeftDiceNumber() {
    Random random = new Random();
    int newRandom = random.nextInt(6) + 1;
    leftDiceNumber =newRandom;

    
  }


  void changeRightDiceNumber() {
    Random random = new Random();
    int newRandom = random.nextInt(6) + 1;
    rightDiceNumber =newRandom;
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('DiceApp'),
        backgroundColor: Colors.red.shade300,
    ),

    body: Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  changeLeftDiceNumber();
                });
              }, 
                child: Image.asset('assets/dice$leftDiceNumber.png'),
            ),
          ),

            const SizedBox(
              width: 10,
            ),


          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  changeRightDiceNumber();
                });
              }, 
                child: Image.asset('assets/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    ),


    );
  }
}