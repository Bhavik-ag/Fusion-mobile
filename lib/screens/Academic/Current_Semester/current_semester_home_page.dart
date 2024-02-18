import 'package:flutter/material.dart';
import 'package:fusion/Components/side_drawer.dart';
import 'package:fusion/screens/Academic/Current_Semester/semester.dart';

class CurrentSemesterHomePage extends StatefulWidget {
  @override
  _CurrentSemesterHomePageState createState() =>
      _CurrentSemesterHomePageState();
}

class _CurrentSemesterHomePageState extends State<CurrentSemesterHomePage> {
  @override
  Widget build(BuildContext context) {
    // final AcademicData data =
    //     ModalRoute.of(context)!.settings.arguments as AcademicData;
    final courseList = ModalRoute.of(context)!.settings.arguments;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Current Semester",
            // "Current Semester" + ' -> ' + data.details!['user_sem'].toString(),
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 6.0,
            tabs: [
              Tab(
                child: Container(
                  child: Text(
                    'List of Courses',
                  ),
                ),
              ),
              // Tab(
              // child: Container(
              // child: Text(
              // 'Time-Table',
              // ),
              // ),
              // ),
              // Tab(
              // child: Container(
              // child: Text(
              // 'Academic Calendar',
              // ),
              // ),
              // ),
              // Tab(
              // child: Container(
              // child: Text(
              // 'List of Holidays',
              // ),
              // ),
              // ),
              // Tab(
              // child: Container(
              // child: Text(
              // 'Exam time table',
              // ),
              // ),
              // ),
            ],
          ),
        ),
        drawer: SideDrawer(),
        body: TabBarView(
          children: [
            Semester(courseList: courseList)
            // TimeTable(),Time-T
            // AcademicCalendar(),
            // HolidaysList(),
            // ExamTimeTable(),
          ],
        ),
      ),
    );
  }
}
