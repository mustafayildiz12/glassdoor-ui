import 'package:flutter/material.dart';

import '../saved_tabs/applied_jobs.dart';
import '../saved_tabs/collections.dart';
import '../saved_tabs/job_alerts.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            bottom: const TabBar(
                labelColor: Color(0xFF1861BF),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xFF1861BF),
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    text: "My Collections",
                  ),
                  Tab(
                    text: "Applied Jobs",
                  ),
                  Tab(
                    text: "Job Alerts",
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              MyCollections(),
              AppliedJobs(),
              JobAlerts(),
            ],
          )),
    );
  }
}
