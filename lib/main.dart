import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu/widget/input.dart';
import 'package:konversi_suhu/widget/konversi.dart';
import 'package:konversi_suhu/widget/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = TextEditingController();

  // Dynamic variable
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  void _konversi() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273;
      _reamur = _inputUser * (4 / 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konversi Suhu - (2031710076 - Muslimatul RA)'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputSuhu(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ResultSuhu(
                    result: _kelvin,
                    title: "Suhu Dalam Kelvin",
                  ),
                  ResultSuhu(
                    result: _reamur,
                    title: "Suhu Dalam Reamur",
                  ),
                ],
              ),
              Convert(
                konversi: _konversi,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
