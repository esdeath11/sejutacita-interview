// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IssuesSearchWidget extends StatefulWidget {
  const IssuesSearchWidget({Key? key}) : super(key: key);

  @override
  _IssuesSearchWidgetState createState() => _IssuesSearchWidgetState();
}

class _IssuesSearchWidgetState extends State<IssuesSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.shade300),
            ),
            SizedBox(
              width: 30,
            ),
            Text("items[index]")
          ],
        ),
      );
    });
  }
}
