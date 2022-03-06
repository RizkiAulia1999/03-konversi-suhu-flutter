import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Convert extends StatelessWidget {
  const Convert({Key? key, required this.konversi}) : super(key: key);

  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: ElevatedButton(
        onPressed: () {
          konversi();
        },
        child: Text(
          'Konversi Suhu',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}
