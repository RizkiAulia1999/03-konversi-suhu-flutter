import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: etInput,
      decoration: InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
