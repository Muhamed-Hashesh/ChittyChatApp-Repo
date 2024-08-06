import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';

class ProfileActionsContainer extends StatelessWidget {
  const ProfileActionsContainer({
    super.key,
    required this.label,
    required this.icon,
    required this.contentColor,
  });
  final String label;
  final IconData icon;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: contentColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: contentColor,
          ),
          5.width,
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: contentColor,
                  fontSize: 14,
                ),
          ),
        ],
      ),
    );
  }
}
