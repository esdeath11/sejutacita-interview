// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sejutacitainterview/data/data_status.dart';
import 'package:sejutacitainterview/module/issues_search/issues_search_widget.dart';
import 'package:sejutacitainterview/module/user_search/user_search_widgets.dart';
import 'package:sejutacitainterview/module/widgets/main_menu_loading_type.dart';
import 'package:sejutacitainterview/module/widgets/main_wizard.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static bool userStatus = true;
  static bool issueStatus = false;
  static bool repoStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  onChanged: (val) {},
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 5)),
                ),
              ),
            ),
          ),
        ),
        body: MainScreenWidgets());
  }
}

class MainScreenWidgets extends StatefulWidget {
  const MainScreenWidgets({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetsState createState() => _MainScreenWidgetsState();
}

class _MainScreenWidgetsState extends State<MainScreenWidgets> {
  bool userStatus = DataStatus.userColorStatus;
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        MainWizard(),
        MainMenuLoadingType(),
        Expanded(
            // it's not working but when use pattern it will work
            child: DataStatus.userColorStatus
                ? UserSearchWidget()
                : DataStatus.issuesColorStatus
                    ? IssuesSearchWidget()
                    : DataStatus.repositoriesColorStatus
                        ? Container()
                        : Container())
      ],
    );
  }
}
