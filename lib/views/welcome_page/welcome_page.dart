import 'package:chit_chat_app/config/colors.dart';
import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/helper/texts.dart';
import 'package:chit_chat_app/widgets/app_logo.dart';
import 'package:chit_chat_app/widgets/slider_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const AppLogo(
                hasTitle: false,
              ),
              32.height,
              Column(
                children: [
                  connectImages(),
                  28.height,
                  mediumText(context,
                      text: 'Now You Are',
                      color: Theme.of(context).colorScheme.onPrimary),
                  mediumText(context,
                      text: 'Connected',
                      color: Theme.of(context).colorScheme.secondary),
                  14.height,
                  Text(
                    'Perfect solution of connexct with anyone easly and more secure',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              32.height,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: SliderActionButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row connectImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            radius: 53,
            backgroundColor: kYellowColor,
            child: Image.asset('assets/images/boy.png', height: 102)),
        SvgPicture.asset('assets/icons/connect.svg'),
        CircleAvatar(
          radius: 53,
          backgroundColor: kPrimaryColor,
          child: Image.asset('assets/images/girl.png', height: 102),
        ),
      ],
    );
  }
}
