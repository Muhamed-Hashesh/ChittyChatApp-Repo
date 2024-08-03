import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ChatScreenPage extends StatelessWidget {
  const ChatScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        toolbarHeight: 75,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Ionicons.chevron_back_outline,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            size: 35,
          ),
        ),
        title: Row(
          children: [
            Image.asset('assets/images/girl.png', width: 40),
            8.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chit Chat',
                    style: Theme.of(context).textTheme.labelLarge),
                Text('Online', style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.call_outline,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.videocam_outline,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 100, top: 16, bottom: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: Text('Hello there, how are you today?')),
                  ],
                ),
              ),
              Text('10:32 am',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      )),
            ],
          )
        ],
      ),
    );
  }
}
