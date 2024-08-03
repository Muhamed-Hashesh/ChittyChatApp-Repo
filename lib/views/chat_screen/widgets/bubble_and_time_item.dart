import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyBubbleAndTimeItem extends StatelessWidget {
  const MyBubbleAndTimeItem({
    super.key,
    required this.isComming,
    required this.text,
    required this.date,
    required this.imageUrl,
  });
  final bool isComming;
  final String text;
  final String date;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isComming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7, minWidth: 100),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: isComming
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
          ),
          child: imageUrl == null
              ? Text(text)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(imageUrl!, fit: BoxFit.cover),
                    ),
                    8.height,
                    Text(text),
                  ],
                ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              date,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
            8.width,
            Icon(Ionicons.checkmark_done,
                color: Theme.of(context).colorScheme.primary, size: 18),
          ],
        ),
        16.height,
      ],
    );
  }
}

// class FriendBubbleAndTimeItem extends StatelessWidget {
//   const FriendBubbleAndTimeItem({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(bottom: 8),
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           constraints: BoxConstraints(
//               maxWidth: MediaQuery.of(context).size.width * 0.7, minWidth: 100),
//           decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.primaryContainer,
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(10),
//               topRight: Radius.circular(10),
//               bottomRight: Radius.circular(10),
//             ),
//           ),
//           child: const Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Flexible(child: Text('Hello there, how are you today?')),
//             ],
//           ),
//         ),
//         Text(
//           '10:32 am',
//           style: Theme.of(context).textTheme.labelSmall?.copyWith(
//                 fontSize: 13,
//                 color: Theme.of(context).colorScheme.onPrimaryContainer,
//               ),
//         ),
//         16.height,
//       ],
//     );
//   }
// }
