import 'package:chrconnecthpdraft/feature/app/utils/screen_size_utils.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

final notifier = ValueNotifier(false);

class BottomNavigationAndFloatingShowcase extends StatefulWidget {
  const BottomNavigationAndFloatingShowcase({super.key});

  @override
  State<BottomNavigationAndFloatingShowcase> createState() =>
      _BottomNavigationAndFloatingShowcaseState();
}

class _BottomNavigationAndFloatingShowcaseState
    extends State<BottomNavigationAndFloatingShowcase> {
  bool done = false;

  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  final GlobalKey _three = GlobalKey();
  final GlobalKey _four = GlobalKey();
  final GlobalKey _five = GlobalKey();

  @override
  void initState() {
    notifier.value = false;
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_one, _two, _three, _four, _five]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            vSpace(21),
            descText(),
            vSpace(21),
            actions("Book Appointment", null),
            vSpace(12),
            actions("New message", 'images/edit-20.png'),
            vSpace(12),
            actions("Find new clinic", 'images/hospital.png'),
            vSpace(12),
            floatingAction()
          ],
        ),
        vSpace(21),
        bottomNavigation(),
        vSpace(45),
        completionDescText()
      ],
    );
  }

  Widget descText() {
    return Text(
      "This Home section displays information about the bottom navigation bars"
      " and options available to you from the Plus button on the bottom right corner.",
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
    );
  }

  Widget completionDescText() {
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: (BuildContext context, value, Widget? child) {
        return notifier.value
            ? Center(
                child: Text(
                  "Congratulations on completing the onboarding process successfully! Press Done to proceed to the HomePage",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.green),
                ),
              )
            : const Offstage();
      },
    );
  }

  Widget bottomNavigation() {
    return Container(
      color: Colors.grey.withOpacity(0.45),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Showcase(
              key: _one,
              description:
                  'The homepage provides a summary of appointments, inbox messages, and serves'
                  ' as your dashboard',
              child: Image.asset('images/home-24.png')),
          Showcase(
              key: _two,
              description:
                  'Access comprehensive appointment details conveniently from here',
              child: Image.asset('images/schedule-24.png')),
          Showcase(
              key: _three,
              description:
                  'Stay organized with all notifications and messages consolidated in one place.',
              child: Image.asset('images/inbox-24.png')),
          Showcase(
              key: _four,
              description:
                  'Monitor your expenses and billing information conveniently here',
              child: Image.asset('images/money-24.png')),
        ],
      ),
    );
  }

  Widget floatingAction() {
    return Showcase(
      key: _five,
      description:
          'For quick access to appointments, messages, and clinic locations, click here',
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.deepPurple,
        ),
        height: 42,
        width: 42,
        child: const Icon(
          Icons.add,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget actions(String title, String? imagePath) {
    return Container(
      alignment: Alignment.centerRight,
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.deepPurple),
      child: Row(
        children: [
          imagePath != null
              ? Image.asset(
                  imagePath,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
          hSpace(12),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }
}
