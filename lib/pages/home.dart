import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color greenColor = const Color(0xFF0DAA41);
  late ScrollController _scrollController;

  _scrollListener() {
    if (_scrollController.position.maxScrollExtent * 35 / 100 >= 300) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            stackImage(),
            SizedBox(
              height: 3.h,
            ),
            leftBigTitle("Jobs at top Rated Companies"),
            SizedBox(
              height: 2.h,
            ),
            leftBigSubTitle("See the best companies to work for"),
            SizedBox(
              height: 5.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: jobListHorizontal(index, 13),
                        )),
              ),
            ),
            greyDivider(),
            SizedBox(
              height: 2.h,
            ),
            leftBigTitle("Get notified of news jobs"),
            SizedBox(
              height: 1.2.h,
            ),
            leftBigSubTitle(
                "Tired of searching jobs? Create a job alert to see the freshest jobs daily"),
            SizedBox(
              height: 2.h,
            ),
            alertButton(),
            SizedBox(
              height: 2.h,
            ),
            greyDivider(),
            SizedBox(
              height: 2.h,
            ),
            savedRow(),
            SizedBox(
              height: 2.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: jobListHorizontal(index, 24),
                        )),
              ),
            ),
            greyDivider(),
            SizedBox(
              height: 1.4.h,
            ),
            leftBigTitle("Suggested Searches"),
            Divider(
              thickness: 0.4,
              color: Colors.blueGrey.withOpacity(0.6),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Flutter",
                        style: TextStyle(color: Color(0xFF1861BF)),
                      ),
                      Text("Remote (Work From Home), US")
                    ],
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 24.sp,
                    color: const Color(0xFF1861BF),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 0.4,
              color: Colors.blueGrey.withOpacity(0.6),
            ),
            greyDivider()
          ],
        ),
      ),
    );
  }

  Padding savedRow() {
    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftBigTitle("Saved"),
          Row(
            children: [
              Text(
                "See All",
                style: TextStyle(
                    color: const Color(0xFF1861BF),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 1.w,
              ),
              Icon(
                CupertinoIcons.arrow_right_circle_fill,
                size: 12.sp,
                color: const Color(0xFF1861BF),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding alertButton() {
    return Padding(
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
    );
  }

  Divider greyDivider() {
    return Divider(
      thickness: 1.3.h,
      color: Colors.grey.withOpacity(0.6),
    );
  }

  Padding leftBigSubTitle(String subtitle) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            subtitle,
            style: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400),
          )),
    );
  }

  Padding leftBigTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          )),
    );
  }

  SizedBox jobListHorizontal(int index, int carp) {
    return SizedBox(
      width: 30.w,
      child: Column(
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blueGrey.withOpacity(0.5), width: 0.4)),
            child: SizedBox(
              width: 20.w,
              height: 20.w,
              child: Image.network(
                "https://picsum.photos/id/${(index * carp)}/200",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              width: 30.w,
              height: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.blueGrey.withOpacity(0.5), width: 0.4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "4.5",
                    style: TextStyle(color: greenColor),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Icon(
                    Icons.star,
                    color: greenColor,
                    size: 11.sp,
                  )
                ],
              )),
          SizedBox(
            height: 0.3.h,
          ),
          Text(
            "Senior Flutter Engineer",
            maxLines: 2,
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(
            height: 0.3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Woo Network",
              maxLines: 2,
              style: TextStyle(
                fontSize: 9.sp,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 0.3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "New York",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 9.sp,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 0.3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "\$95K-169K",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                color: greenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox stackImage() {
    return SizedBox(
      width: 100.w,
      height: 35.h,
      child: Stack(children: [
        Image.network(
          "https://i2.milimaj.com/i/milliyet/75/0x0/5ff9c82c55428105f0e56feb.jpg",
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 5.h,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "glassdoor",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
            top: 15.h,
            left: 0,
            right: 0,
            child: Center(
                child: Text(
              "Find job that fits your life",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ))),
        Positioned(
          top: 24.h,
          left: 2.5.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              children: [
                Container(
                  width: 75.w,
                  height: 6.h,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 3.w, top: 1.3.h),
                        border: InputBorder.none,
                        hintText: "Search Jobs",
                        isDense: true),
                  ),
                ),
                Container(
                  width: 6.h,
                  height: 6.h,
                  color: greenColor,
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
