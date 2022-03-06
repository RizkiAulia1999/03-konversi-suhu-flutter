import 'package:flutter/material.dart';

class ResultSuhu extends StatelessWidget {
  const ResultSuhu({
    Key? key,
    required this.result,
    required this.title,
  }) : super(key: key);

  final double result;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Text(
            '$title',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Text(
          '$result',
          style: TextStyle(fontSize: 48),
        ),
      ],
    );
  }
}
