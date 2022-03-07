import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppliedJobs extends StatelessWidget {
  const AppliedJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 9.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Text(
              "When You apply to jobs labeled as 'Apply on Phone',they will appear here",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
