import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 6.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "You have no updates at this time",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
