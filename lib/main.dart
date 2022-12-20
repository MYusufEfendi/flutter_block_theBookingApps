import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/disable_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/primary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/secondary_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/widget/square_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            PrimaryButton(
              type: PrimaryButtonType.type2,
              onPressed: () {},
              text: "Download",
              width: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            SecondaryButton(
              type: SecondaryButtonType.type2,
              onPressed: () {},
              text: "Download",
              width: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            DisableButton(
              type: DisableButtonType.type2,
              onPressed: () {},
              text: "Disabled Button",
              width: 146,
            ),
            const SizedBox(
              height: 16,
            ),
            SquareCheckbox(
              onTap: () {},
            ),
            Image.asset(ImgString.cittaStanding)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
