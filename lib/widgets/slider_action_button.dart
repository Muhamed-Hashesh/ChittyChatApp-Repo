import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliderActionButton extends StatelessWidget {
  const SliderActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () => Get.offAllNamed('/authPage'),
      innerColor: Theme.of(context).colorScheme.secondary,
      outerColor: Theme.of(context).colorScheme.primaryContainer,
      text: 'Slide to start now',
      textStyle: Theme.of(context)
          .textTheme
          .labelSmall
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
      sliderButtonIcon: SvgPicture.asset(
        'assets/icons/dragable.svg',
        width: 24,
      ),
      submittedIcon: SvgPicture.asset(
        'assets/icons/connect.svg',
        width: 24,
      ),
      sliderButtonIconPadding: 20,
      // sliderRotate: false,
      animationDuration: const Duration(milliseconds: 500),
    );
  }
}
