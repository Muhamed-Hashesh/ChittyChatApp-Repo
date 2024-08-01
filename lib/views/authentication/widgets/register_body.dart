import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
