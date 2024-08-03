import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatCardItem extends StatelessWidget {
  const ChatCardItem({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/chatScreen'),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 85,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Image.asset('assets/images/boy.png', width: 60),
            16.width,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chitti',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontSize: 17,
                          )),
                  Text(
                    'Bad me bat krta huBad me bat krta huBad me bat krta hu',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            16.width,
            Text(
              '9:00 AM',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
