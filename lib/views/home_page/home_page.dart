import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/home_page/tabs/chats_tab_content.dart';
import 'package:chit_chat_app/views/home_page/widgets/tab_bar_row.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => Get.toNamed('/profilePage'),
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width: 30,
                ),
              ),
              16.width,
              Text(
                'ChittyChat',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              EneftyIcons.search_normal_outline,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 26,
            ),
          ),
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed('/welcomePage');
            },
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 28,
            ),
          ),
        ],
        bottom: myTabBar(context, tabController),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ChatsTabContent(),
          Placeholder(),
          Placeholder(),
        ],
      ),
    );
  }
}
