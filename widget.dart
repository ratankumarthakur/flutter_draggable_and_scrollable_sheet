import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {

  DateTimeRange selectedDates=DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
          builder: (BuildContext context,ScrollController scrollController){
        return Container(
          color: Colors.orange,
          child: ListView.builder(
              itemCount: 25,
              controller: scrollController,
              itemBuilder:(BuildContext context,int index){
                return ListTile(
                  title: Text('ITEM $index'),
                );
          }),
        );
      }),
    );
  }
}
