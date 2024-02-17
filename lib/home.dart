import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_row.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController controller;
  dynamic number1 = 0.0;
  dynamic number2 = 0.0;
  String? operation;
  List list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, '#', '/'];
  //function
  dynamic function(
    dynamic a,
    dynamic b,
    String operation,
  ) {
    dynamic res = 0;
    if (operation == '+') {
      res = a + b;
    }
    if (operation == '-') {
      res = a - b;
    }
    if (operation == '*') {
      res = a * b;
    }
    if (operation == '/') {
      res = a / b;
    }

    return res;
  }

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        foregroundColor: Colors.white,
        leading: const Icon(Icons.calculate),
        title: const Text("Calculator"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(140.0),
          child: Container(
            color: Colors.teal[600],
            height: 140.0,
            width: double.infinity,
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              controller: controller,
              enabled: false,
              style: const TextStyle(color: Colors.white, fontSize: 29.0),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomRow(
              number1: list[1].toString(),
              number2: list[2].toString(),
              number3: list[3].toString(),
              backgroundColor: Colors.teal[300],
              operation: '+',
              onPressedOperation: () {
                operation = '+';
              },
              onPressednumber1: () {
                number1 == 0 ? number1 = list[1] : number2 = list[1];
                controller.text = list[1].toString();
              },
              onPressednumber2: () {
                number1 == 0 ? number1 = list[2] : number2 = list[2];
                controller.text = list[2].toString();
              },
              onPressednumber3: () {
                number1 == 0 ? number1 = list[3] : number2 = list[3];
                controller.text = list[3].toString();
              },
            ),
            CustomRow(
              number1: list[4].toString(),
              number2: list[5].toString(),
              number3: list[6].toString(),
              backgroundColor: Colors.teal[300],
              operation: '-',
              onPressedOperation: () {
                operation = '-';
              },
              onPressednumber1: () {
                number1 == 0 ? number1 = list[4] : number2 = list[4];
                controller.text = list[4].toString();
              },
              onPressednumber2: () {
                number1 == 0 ? number1 = list[5] : number2 = list[5];
                controller.text = list[5].toString();
              },
              onPressednumber3: () {
                number1 == 0 ? number1 = list[6] : number2 = list[6];
                controller.text = list[6].toString();
              },
            ),
            CustomRow(
              number1: list[7].toString(),
              number2: list[8].toString(),
              number3: list[9].toString(),
              backgroundColor: Colors.teal[300],
              operation: '*',
              onPressedOperation: () {
                operation = '*';
              },
              onPressednumber1: () {
                number1 == 0 ? number1 = list[7] : number2 = list[7];
                controller.text = list[7].toString();
              },
              onPressednumber2: () {
                number1 == 0 ? number1 = list[8] : number2 = list[8];
                controller.text = list[8].toString();
              },
              onPressednumber3: () {
                number1 == 0 ? number1 = list[9] : number2 = list[9];
                controller.text = list[9].toString();
              },
            ),
            CustomRow(
              number1: '#',
              number2: '0',
              number3: '/',
              operation: '=',
              backgroundColor: Colors.yellowAccent.withOpacity(0.7),
              onPressedOperation: () {
                controller.text =
                    function(number1!, number2!, operation!).toString();
                setState(() {
                  number1 = 0.0;
                  number2 = 0.0;
                });
              },
              onPressednumber1: () {
                //number1 == 0 ? number1 = list[10] : number2 = list[10];
                controller.text = list[10].toString();
              },
              onPressednumber2: () {
                number1 == 0 ? number1 = list[0] : number2 = list[0];
                controller.text = list[0].toString();
              },
              onPressednumber3: () {
                operation = '/';
                controller.text = list[11].toString();
              },
            ),
          ],
        ),
      ),
    );
  }
}
