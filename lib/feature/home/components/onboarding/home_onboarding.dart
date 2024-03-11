import 'dart:developer';

import 'package:chrconnecthpdraft/feature/app/utils/screen_size_utils.dart';
import 'package:chrconnecthpdraft/feature/app/utils/widget_app_components/showcase_builder.dart';
import 'package:chrconnecthpdraft/feature/home/components/onboarding/reminders_showcase.dart';
import 'package:chrconnecthpdraft/feature/home/components/onboarding/upcoming_appointments_showcase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'bottom_navbar_and_floating_showcase.dart';
import 'inbox_and_resources_showcase.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _notifier = ValueNotifier(false);

  @override
  void initState() {
    _notifier.value = false;
    notifier.value = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset('images/background.png'),
          ValueListenableBuilder(
            valueListenable: _notifier,
            builder: (BuildContext context, value, Widget? child) {
              return !_notifier.value
                  ? welcomeInstructions()
                  : Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: [
                          Expanded(
                            child: OnBoardingSlider(
                              headerBackgroundColor: Colors.white,
                              finishButtonText: 'Done',
                              skipFunctionOverride: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              onFinish: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              finishButtonStyle: const FinishButtonStyle(
                                backgroundColor: Colors.black,
                              ),
                              skipTextButton: const Text('Cancel'),
                              background: [
                                Image.asset('images/background.png'),
                                Image.asset('images/background.png'),
                                Image.asset('images/background.png'),
                                Image.asset('images/background.png'),
                              ],
                              totalPage: 4,
                              speed: 1.8,
                              pageBodies: [
                                ShowCaseBuilderWidget(
                                    content: reminderSection()),
                                ShowCaseBuilderWidget(
                                    content: appointmentSection()),
                                ShowCaseBuilderWidget(content: bottomSection()),
                                ShowCaseBuilderWidget(
                                    callback: () {
                                      notifier.value = !notifier.value;
                                    },
                                    content: bottomNavAndFloatingSection())
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
            },
          )
        ],
      )),
    );
  }

  Widget reminderSection() {
    return const ReminderShowcase(
      title: "Intake Questionnaire",
      subtitle: 'LMC Optometry & Eye Care',
      body: 'Please, fill out the pre-visit questionnaire',
      cta: 'Start',
    );
  }

  Widget appointmentSection() {
    return const UpcomingAppointmentsShowcase();
  }

  Widget bottomSection() {
    return const InboxAndResourcesShowcase();
  }

  Widget bottomNavAndFloatingSection() {
    return const BottomNavigationAndFloatingShowcase();
  }

  Widget welcomeInstructions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Linda",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          vSpace(21),
          Text(
            "We will take you on a quick tour of your Homepage.",
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontWeight: FontWeight.w300, fontSize: 16),
          ),
          vSpace(21),
          InkWell(
            onTap: () {
              _notifier.value = !_notifier.value;
            },
            child: Row(
              children: [
                Text("Let's Go",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 21, fontWeight: FontWeight.w600)),
                hSpace(8),
                const Icon(
                  Icons.arrow_forward,
                  size: 32,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
