import 'package:final_project/conversion.dart';
import 'package:final_project/measuring_cup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.white,
          //secondary: Colors.yellow,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.grey,
          //other options
        ),
        useMaterial3: true,

        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Conversion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Conversion()),
                );
              },
                child: Text(
                  'Convert'
                ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MeasuringCup( )),
                );
              },
              child: Text(
                'Measuring Cup'
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
