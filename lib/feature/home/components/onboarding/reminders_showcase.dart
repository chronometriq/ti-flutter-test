import 'package:chrconnecthpdraft/feature/app/utils/screen_size_utils.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ReminderShowcase extends StatefulWidget {
  const ReminderShowcase({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.body = '',
    this.cta = '',
    this.ctaStyle,
    this.image,
  });

  final String title;
  final String subtitle;
  final String body;
  final Widget? image;
  final String cta;
  final ButtonStyle? ctaStyle;

  @override
  State<ReminderShowcase> createState() => _ReminderShowcaseState();
}

class _ReminderShowcaseState extends State<ReminderShowcase> {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  final GlobalKey _three = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => ShowCaseWidget.of(context).startShowCase([_one, _two, _three]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        vSpace(21),
        reminderDescText(),
        vSpace(21),
        sectionRow(),
        vSpace(16),
        reminderCard()
      ],
    );
  }

  Widget reminderDescText() {
    return Text(
      "This Home section will display all crucial reminders awaiting action",
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.w600,fontSize: 18),
    );
  }

  /// this is the title and view all section bar...
  Widget sectionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Showcase(
          key: _one,
          description: 'Keep track of all the Reminders',
          child: Text("Reminders",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
        ),
        Showcase(
          key: _two,
          description:
              'You can view all your reminders by simply clicking here',
          child: const Text(
            'View All',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }

  // this is to showcase the sections in the card and how to perform or take actions
  // on those...
  Widget reminderCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.subtitle,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                const Spacer(),
                widget.image ?? const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '${widget.body}\n',
              style: Theme.of(context).textTheme.labelLarge,
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            Showcase(
              key: _three,
              description:
                  'Take Actions on those reminder easily by simply pressing this button',
              child: TextButton(
                onPressed: () {},
                style: widget.ctaStyle,
                child: Text(widget.cta),
              ),
            )
          ],
        ),
      ),
    );
  }
}
