// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function()? onClick;
  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: const TextStyle(fontSize: 25)),
      onPressed: onClick,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              icone,
              size: 35,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
