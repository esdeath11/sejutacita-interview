// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserSearchWidget extends StatefulWidget {
  const UserSearchWidget({Key? key}) : super(key: key);

  @override
  _UserSearchWidgetState createState() => _UserSearchWidgetState();
}

class _UserSearchWidgetState extends State<UserSearchWidget> {
  ScrollController controller = ScrollController();
  List<String> items = List.generate(15, (index) => 'Hello $index');
  int currentMax = 15;

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        addMoreList();
      }
    });
    super.initState();
  }

  addMoreList() {
    for (var i = currentMax; i < currentMax + 15; i++) {
      items.add("more item ${i + 1}");
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: controller,
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index == items.length) {
            return Center(child: CircularProgressIndicator());
          }
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
                Text(items[index])
              ],
            ),
          );
        });
  }
}
