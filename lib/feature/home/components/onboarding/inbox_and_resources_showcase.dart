import 'package:chrconnecthpdraft/feature/app/utils/screen_size_utils.dart';
import 'package:chrconnecthpdraft/feature/home/components/more_resources.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../inbox/inbox_item.dart';

class InboxAndResourcesShowcase extends StatefulWidget {
  const InboxAndResourcesShowcase({super.key});

  @override
  State<InboxAndResourcesShowcase> createState() =>
      _InboxAndResourcesShowcaseState();
}

class _InboxAndResourcesShowcaseState extends State<InboxAndResourcesShowcase> {


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
        descText(),
        vSpace(21),
        sectionRow(),
        vSpace(21),
        inboxSampleShowcase(),
        vSpace(21),
        moreResourceDescText(),
        vSpace(21),
        const MoreResources(),

      ],
    );
  }




  Widget descText() {
    return Text(
      "At the bottom of the HomePage display all inbox messages and access to other resources",
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.w600,fontSize: 18),
    );
  }

  Widget moreResourceDescText() {
    return Showcase(
      key: _three,
      description: 'Excess all the extra resources from here.',
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          "More resources section : ",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.w600,fontSize: 18),
        ),
      ),
    );
  }

  /// this is the title and view all section bar...
  Widget sectionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Showcase(
          key: _one,
          description: 'View all the important notifications here',
          child: Text("Inbox",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )),
        ),
        Showcase(
          key: _two,
          description:
          'You can view all your inbox messages by simply clicking here',
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


  Widget inboxSampleShowcase(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InboxItem(
        title: 'LMC Optometry & Eye Care',
        image: Image.asset('images/lmc.png').image,
        count: 1,
        subtitle: 'You have a new message from your clinic',
      ),
    );
  }
}
