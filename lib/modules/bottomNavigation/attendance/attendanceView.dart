import 'package:flutter/material.dart';

import '../../../utils/appHelper/appFontFamily.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColorDark.withOpacity(0.90),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
      body: Center(
          child: Text(
        "Coming soon!",
        style: AppFontFamily().roboto.copyWith(
            fontSize: 18,
            color: Theme.of(context).highlightColor,
            fontWeight: FontWeight.w600),
      )),
    );
  }
}
