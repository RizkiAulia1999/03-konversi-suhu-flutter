import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              TextFormField(
                controller: etInput,
                decoration:
                    InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Suhu dalam Kelvin',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        '$_kelvin',
                        style: TextStyle(fontSize: 48),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Suhu dalam Reamor',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        '$_reamur',
                        style: TextStyle(fontSize: 48),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  onPressed: _konversi,
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text(
                    'Konversi Suhu',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
