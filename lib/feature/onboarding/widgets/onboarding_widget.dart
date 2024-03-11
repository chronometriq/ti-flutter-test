
import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/onboarding/widgets/onboarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key, required this.onChangeOnboarding})
      : super(key: key);
  final Function() onChangeOnboarding;

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  int currentIndex = 0;
  PageController controller = PageController();
  Map<String, String> onboardingTitles = {
    'Welcome to Your Dashboard': 'Navigate through your daily tasks with ease and efficiency right from the home screen.', // For the Home Page
    'Manage Your Appointments': 'Easily book, reschedule, or cancel appointments with just a few taps.', // For Appointments
    'Your Inbox, Organized': 'Stay on top of your messages and notifications without missing a beat.', // For Inbox
    'Simplified Billing': 'View, manage, and pay your bills effortlessly from anywhere.', // For Billing
    'Set and Manage Reminders': 'Never miss an important task or appointment with personalized reminders.' // Added for Reminders
  };
int get titleLength => onboardingTitles.length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 400,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: titleLength,
              itemBuilder: (context, index) {
                return OnboardingPageWidget(
                  index: index,
                  title: onboardingTitles.keys.elementAt(index),
                  subTitle: onboardingTitles.values.elementAt(index),
                );
              },
            ),
          ),
          SmoothPageIndicator(controller: controller, count: titleLength, ),
        const
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (currentIndex < 3) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      widget.onChangeOnboarding();
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    '${currentIndex < 3 ? "Next" : "Get started"}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  style: Theme.of(context).textButtonTheme.style?.copyWith(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 0)))),
              if (currentIndex < titleLength -1)
                ElevatedButton(
                    onPressed: () {
                      if (currentIndex < titleLength-1) {
                        controller.jumpToPage(titleLength -1);
                      } else {
                        Navigator.of(context).pop();
                      }
                    },
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0))),
                    child: Text(
                      'Skip',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    )),
            ],
          )
        ],
      ),
    );
  }
}
