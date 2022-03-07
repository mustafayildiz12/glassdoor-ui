import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyCollections extends StatefulWidget {
  const MyCollections({Key? key}) : super(key: key);

  @override
  State<MyCollections> createState() => _MyCollectionsState();
}

class _MyCollectionsState extends State<MyCollections> {
  Color blueColor = const Color(0xFF1861BF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          addCollectionRow(),
          SizedBox(
            height: 5.h,
          ),
          itemsRow("https://picsum.photos/id/341/200", "flutter", "10 items"),
          SizedBox(
            height: 2.h,
          ),
          littleDivider(),
          SizedBox(
            height: 2.h,
          ),
          leftBgTitle("Your Activity"),
          SizedBox(
            height: 3.h,
          ),
          itemsRow(
              "https://picsum.photos/id/211/200", "All Saved Jobs", "10 items"),
          SizedBox(
            height: 4.h,
          ),
          itemsRow(
              "https://picsum.photos/id/111/200", "Viewed Jobs", "21 items"),
          SizedBox(
            height: 1.h,
          ),
          littleDivider(),
          SizedBox(
            height: 0.4.h,
          ),
          leftBgTitle("Get notified of new jobs"),
          SizedBox(
            height: 1.4.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tired of searching for jobs? Create a job alert to see the freshest jobs daily",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400),
                )),
          ),
          SizedBox(
            height: 2.4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              height: 6.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFF1861BF),
                  borderRadius: BorderRadius.circular(1.w)),
              child: Text(
                "Create Job Alert",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }

  Divider littleDivider() {
    return Divider(
      color: Colors.blueGrey.withOpacity(0.7),
      thickness: 0.5,
    );
  }

  Padding leftBgTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black.withOpacity(0.9),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          )),
    );
  }

  Padding itemsRow(String image, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
            height: 10.w,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.black54, fontSize: 10.sp),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding addCollectionRow() {
    return Padding(
      padding: EdgeInsets.only(left: 3.w),
      child: Row(
        children: [
          Icon(
            Icons.add_circle_outline,
            color: blueColor,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            "Create Collection",
            style: TextStyle(
                color: blueColor, fontWeight: FontWeight.w500, fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}
