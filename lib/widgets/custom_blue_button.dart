import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    super.key,
    required this.label,
    this.onPressed,
    this.prefixIcon,
  });

  final String label;
  final Function()? onPressed;
  final String? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(189, 50),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(prefixIcon!),
          8.width,
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
