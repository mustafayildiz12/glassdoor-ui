import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MePage extends StatefulWidget {
  const MePage({Key? key}) : super(key: key);

  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 1.2.h,
          ),
          topNamRow(),
          SizedBox(
            height: 2.2.h,
          ),
          const Divider(
            thickness: 0.7,
            color: Colors.blueGrey,
          ),
          SizedBox(
            height: 1.2.h,
          ),
          settingsListElements(Icons.settings, "Profile Preferences",
              "Improve your recommendations"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(
              Icons.book, "My Resume", "View and Upload your resumes"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(
              Icons.network_ping, "Region and content", "Türkiye"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(Icons.ballot, "Democraphisc", "Democraphisc"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(Icons.ballot, "Democraphisc", "Democraphisc"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(
              Icons.table_bar, "Companies", "Fallow your favorite companies"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(
              Icons.chat_bubble, "Contributions", "See your contributions"),
          SizedBox(
            height: 2.5.h,
          ),
          settingsListElements(
              Icons.settings_accessibility, "Settings", "App Settings"),
        ],
      ),
    );
  }

  Padding settingsListElements(IconData icon, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.8.w),
            child: Icon(
              icon,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            width: 3.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 13.sp),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 9.sp),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding topNamRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jessica Flamara",
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
              Text(
                "Flutter Developer Intern at JobsWire",
                style: TextStyle(color: Colors.grey, fontSize: 11.sp),
              ),
              Text(
                "Turkey",
                style: TextStyle(color: Colors.grey, fontSize: 11.sp),
              )
            ],
          ),
          CircleAvatar(
            radius: 7.w,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/1e/88/93/1e889313773c6f02fe21a878d73d437f.jpg"),
          )
        ],
      ),
    );
  }
}
