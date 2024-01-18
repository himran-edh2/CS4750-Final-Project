import 'dart:math';
import 'package:flutter/material.dart';

class MeasuringCup extends StatefulWidget {
  const MeasuringCup({super.key});

  @override
  State<MeasuringCup> createState() => _MeasuringCupState();
}

class _MeasuringCupState extends State<MeasuringCup> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measuring Cup')
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              Container(
                height: 96,
                width: 96,
                color: Colors.blue,
                child: FittedBox(
                  child: Text(
                    "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blueGrey,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blue,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blueGrey,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blue,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blueGrey,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
              Container(
                height: 96,
                width: 96,
                color: Colors.blue,
                child: FittedBox(
                  child: Text(
                      "1 inch"
                  ),
                ),
              ),
            ],
          ),
            Column(
              children: [
                Text('Enter height',
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black)),
                 SizedBox(
                  width: 50.0,
                  child: TextField(
                    controller: firstController,
                    decoration: const InputDecoration(enabledBorder: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
                Text('Enter diameter',
                    style: TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black)),
                SizedBox(
                  width: 50.0,
                  child: TextField(
                    controller: secondController,
                    decoration: const InputDecoration(enabledBorder: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                  onPressed: () {
                      double a = double.parse(firstController.text);
                      double b = double.parse(secondController.text);
                      setState(() {
                        result = ((pi*a) * ((b/2)*(b/2))) / 14.4375;
                      });
                    },
                  child: const Text('Calculate in Inches'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    a = a * 0.393701;
                    double b = double.parse(secondController.text);
                    b = b * 0.393701;
                    setState(() {
                      result = ((pi*a) * ((b/2)*(b/2))) / 14.4375;
                    });
                  },
                  child: const Text('Calculate in Centimeters'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('Your # of containers \nto get 1 cup: \n$result',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            ),

          Column(
            children: [
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                    "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.red,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
              Container(
                height: 37.79527559055118,
                width: 37.79527559055118,
                color: Colors.orange,
                child: FittedBox(
                  child: Text(
                      "1 centimeter"
                  ),
                ),
              ),
            ],
          )
        ],
          )
        ),
      );
  }
}
