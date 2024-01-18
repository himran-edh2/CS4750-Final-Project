import 'package:flutter/material.dart';

class Conversion extends StatefulWidget {
  const Conversion({super.key});

  @override
  State<Conversion> createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {
  String result = "1 inch = 2.54 centimeters";
  String _unit1 = 'Inches';
  var unit = {'Inches': 'IN', 'Centimeters':'CM', 'Miles':'MI', 'Fahrenheit':'F','Celsius':'C'};
  List _units =[];
  UnitDependentDropdown() {
    unit.forEach((key, value) {
      _units.add(key);
    });
  }

  String _unit2 = '';
  var unit2 = {'Inches': 'CM', 'Centimeters':'IN', 'Miles':'IN', 'Fahrenheit':'C','Celsius':'F'};
  List _units2 =[];
  Unit2DependentDropdown(unit1key) {
    unit2.forEach((key, value) {
      if (unit1key == value) {
        _units2.add(key);
      }
    });
    _unit2 = _units2[0];
  }

  @override
  void initState() {
    super.initState();
    UnitDependentDropdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Convert')
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(width: 24),
                    Text('Unit 1', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    DropdownButton(
                        value: _unit1,
                        onChanged: (newValue) {
                          setState(() {
                            _units2 = [];
                            Unit2DependentDropdown(unit[newValue]);
                            _unit1 = "$newValue";
                          });
                        },
                        items: _units. map((unit) {
                          return DropdownMenuItem(
                            child: new Text(unit),
                            value: unit,
                          );
                        }).toList()
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(width: 24),
                    Text('Unit 2', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    DropdownButton(
                        value: _unit2,
                        onChanged: (newValue) {
                          setState(() {
                            _unit2 = "$newValue";
                          });
                        },
                        items: _units2. map((unit) {
                          return DropdownMenuItem(
                            child: new Text(unit),
                            value: unit,
                          );
                        }).toList()
                    )
                  ],
                )
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                result = "1 Fahrenheit = -17.2222 Celsius";
              },
              child: const Text('Convert'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('$result',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}