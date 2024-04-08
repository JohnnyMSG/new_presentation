import 'package:flutter_modular/flutter_modular.dart';
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}