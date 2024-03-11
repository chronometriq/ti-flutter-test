import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/app/utils/screen_size_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:showcaseview/showcaseview.dart';
import '../../../app/entities/onboarding_appointment_entity.dart';
import '../calendar.dart';

class UpcomingAppointmentsShowcase extends StatefulWidget {
  const UpcomingAppointmentsShowcase({
    super.key,
  });

  @override
  State<UpcomingAppointmentsShowcase> createState() =>
      _UpcomingAppointmentsShowcaseState();
}

class _UpcomingAppointmentsShowcaseState
    extends State<UpcomingAppointmentsShowcase> {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  final GlobalKey _three = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
              _one,
              _two,
              _three,
              OnBoardingAppointmentEntityList.justShowCaseList.first.globalKey,
              OnBoardingAppointmentEntityList.justShowCaseList[1].globalKey,
            ]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        vSpace(21),
        descText(),
        vSpace(21),
        sectionRowShowCase(),
        vSpace(21),
        dateSelectionFilterShowcase(),
        vSpace(21),
        appointmentListShowCase()
      ],
    );
  }

  /// this is the title and view all section bar...
  Widget sectionRowShowCase() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Showcase(
          key: _one,
          description: 'Keep track of all the upcoming appointments',
          child: Text("Upcoming Appointments",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
        ),
        Showcase(
          key: _two,
          description:
              'You can view all your appointments by simply clicking here',
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


  Widget descText() {
    return Text(
      "The Home section will showcase upcoming appointments.",
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.w600,fontSize: 18),
    );
  }

  Widget dateSelectionFilterShowcase() {
    return Row(
      children: [
        ChoiceChip(
          label: Text(context.localizations.today),
          selected: true,
          onSelected: (_) {},
        ),
        const SizedBox(width: 8),
        Showcase(
          key: _three,
          description: 'Easily filter appointments using the calendar dates.',
          child: ChoiceChip(
            label: const Text('June 13'),
            selected: false,
            onSelected: (_) {},
          ),
        ),
        const SizedBox(width: 8),
        ChoiceChip(
          label: const Text('July 25'),
          selected: false,
          onSelected: (_) {},
        ),
      ],
    );
  }

  Widget appointmentListShowCase() {
    return Column(
      children: OnBoardingAppointmentEntityList.justShowCaseList.map((e) {
        return appointmentCards(e);
      }).toList(),
    );
  }

  Widget appointmentCards(
      OnBoardingAppointmentEntity onBoardingAppointmentEntity) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 16),
              Calendar(
                size: const Size(64, 64),
                month: DateFormat.MMM()
                    .format(onBoardingAppointmentEntity.dateTime!)
                    .toString(),
                day: DateFormat.d()
                    .format(onBoardingAppointmentEntity.dateTime!)
                    .toString(),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    onBoardingAppointmentEntity.title!,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            Image.asset(onBoardingAppointmentEntity.image!)
                                .image,
                        maxRadius: 12,
                        minRadius: 12,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        onBoardingAppointmentEntity.subTitle!,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.outline),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 16),
            ],
          ),
          Divider(
            height: 28,
            thickness: 1,
            color: Theme.of(context).colorScheme.outline.withOpacity(0.25),
          ),
          //const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 16),
              Image.asset('images/schedule-20.png'),
              const SizedBox(width: 16),
              Expanded(
                child: Wrap(
                  children: [
                    Text(
                      '${DateFormat.jm().format(onBoardingAppointmentEntity.dateTime!)} ',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      '(${onBoardingAppointmentEntity.duration!.inMinutes} min)',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Showcase(
                key: onBoardingAppointmentEntity.globalKey,
                description:
                    'You can take action for the appointments.ie, there can be direct link to the '
                    'virtual appointment or checkIn action etc. ',
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    onBoardingAppointmentEntity.cta!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
