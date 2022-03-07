import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class JobAlerts extends StatelessWidget {
  const JobAlerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1861BF),
        onPressed: () {},
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 21.sp,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Junior Flutter Developer",
                      style: TextStyle(color: Color(0xFF1861BF)),
                    ),
                    Text("Remote")
                  ],
                ),
                Icon(
                  CupertinoIcons.pencil,
                  color: Colors.grey.shade500,
                  size: 21.sp,
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.3.h,
          ),
          Text(
            "CLEAR ALL NEW JOBS",
            style: TextStyle(
                color: const Color(0xFF1861BF),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
