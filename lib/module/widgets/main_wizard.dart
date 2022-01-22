// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sejutacitainterview/data/data_status.dart';

class MainWizard extends StatefulWidget {
  const MainWizard({
    Key? key,
  }) : super(key: key);

  @override
  _MainWizardState createState() => _MainWizardState();
}

class _MainWizardState extends State<MainWizard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      DataStatus.userColorStatus = true;
                      DataStatus.issuesColorStatus = false;
                      DataStatus.repositoriesColorStatus = false;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                        color: DataStatus.userColorStatus
                            ? Colors.grey.shade300
                            : Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("User"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      DataStatus.userColorStatus = false;
                      DataStatus.issuesColorStatus = true;
                      DataStatus.repositoriesColorStatus = false;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                        color: DataStatus.issuesColorStatus
                            ? Colors.grey.shade300
                            : Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Issues"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      DataStatus.userColorStatus = false;
                      DataStatus.issuesColorStatus = false;
                      DataStatus.repositoriesColorStatus = true;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                        color: DataStatus.repositoriesColorStatus
                            ? Colors.grey.shade300
                            : Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Repositories"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
