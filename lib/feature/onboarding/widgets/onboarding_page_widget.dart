import 'package:flutter/material.dart';
class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    Key? key,
    required this.index,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final int index;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('images/onboarding/onboarding_${index + 1}.png'),
          ),
        ),
        Center(
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
