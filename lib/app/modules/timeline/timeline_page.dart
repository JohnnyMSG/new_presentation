import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/timeline/timeline_store.dart';
import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  final String title;
  const TimelinePage({Key? key, this.title = 'TimelinePage'}) : super(key: key);
  @override
  TimelinePageState createState() => TimelinePageState();
}
class TimelinePageState extends State<TimelinePage> {
  final TimelineStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: null,
      body: Row(
        children: [
          MainDrawer(selectedIndex: 1),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: ColorsD.dark_blue,
            ),
          ),
        ],
      ),
    );
  }
}