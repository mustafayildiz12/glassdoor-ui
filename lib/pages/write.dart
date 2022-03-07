import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WritePage extends StatefulWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  late int _curveValue;
  @override
  void initState() {
    _curveValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Would you like to contribute ?",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonColumn(Icons.chat_bubble_rounded, "Add Review"),
              const SizedBox(),
              buttonColumn(Icons.bakery_dining, "Add Salary"),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonColumn(Icons.phone_in_talk, "Add Interview"),
              const SizedBox(),
              buttonColumn(Icons.photo_camera_outlined, "Add Photo"),
            ],
          ),
        ],
      ),
    );
  }

  Column buttonColumn(IconData icon, String name) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.elasticInOut,
          alignment: Alignment(_curveValue.toDouble(), _curveValue.toDouble()),
          width: 20.w,
          height: 20.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 5, 63, 110),
          ),
          child: Icon(
            icon,
            size: 24.sp,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
