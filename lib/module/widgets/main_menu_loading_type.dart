// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sejutacitainterview/data/data_status.dart';

class MainMenuLoadingType extends StatefulWidget {
  const MainMenuLoadingType({Key? key}) : super(key: key);

  @override
  _MainMenuLoadingTypeState createState() => _MainMenuLoadingTypeState();
}

class _MainMenuLoadingTypeState extends State<MainMenuLoadingType> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                DataStatus.lazyLoadStatus = true;
                DataStatus.withIndexStatus = false;
              });
            },
            child: Container(
              width: 150,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Lazy Loading",
                style: TextStyle(
                    color:
                        DataStatus.lazyLoadStatus ? Colors.white : Colors.black,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: DataStatus.lazyLoadStatus
                          ? Colors.grey
                          : Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color:
                      DataStatus.lazyLoadStatus ? Colors.grey : Colors.white),
            ),
          )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                DataStatus.lazyLoadStatus = false;
                DataStatus.withIndexStatus = true;
              });
            },
            child: Container(
              width: 150,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "With Index",
                style: TextStyle(
                    color: DataStatus.withIndexStatus
                        ? Colors.white
                        : Colors.black,
                    fontSize: 15),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: DataStatus.withIndexStatus
                          ? Colors.grey
                          : Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color:
                      DataStatus.withIndexStatus ? Colors.grey : Colors.white),
            ),
          ))
        ],
      ),
    );
  }
}
