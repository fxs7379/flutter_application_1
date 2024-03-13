import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/analysisPage.dart';
import 'package:flutter_application_1/classifyPage.dart';
import 'package:flutter_application_1/discussPage.dart';
import 'package:flutter_application_1/myTextStyle.dart';
import 'package:flutter_application_1/personInfoPage.dart';
import 'package:flutter_application_1/staffManage.dart';
import 'package:flutter_application_1/status.dart';
import 'package:flutter_application_1/submitPage.dart';
import 'package:flutter_application_1/uploadPage.dart';
import 'package:flutter_application_1/verifyPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.cloud),
        title: const Text(
          "云量识别",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            extended: true,
            indicatorColor: Theme.of(context).colorScheme.onPrimaryContainer,
            selectedIconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            selectedLabelTextStyle: MyTextStyle.style,
            unselectedLabelTextStyle: MyTextStyle.style,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text("个人信息"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.upload_file),
                label: Text("上传"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.collections),
                label: Text("图片分类"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.upload),
                label: Text("提交"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.analytics),
                label: Text("分析"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text("员工管理"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.checklist),
                label: Text("审核"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.handshake),
                label: Text("讨论"),
              )
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              selectedIndex = value;
              setState(() {});
            },
          ),
          if (selectedIndex == 0)
            const PersonInfoPage()
          else if (selectedIndex == 1)
            const UploadPage()
          else if (selectedIndex == 2)
            const ClassifyPage()
          else if (selectedIndex == 3)
            const SubmitPage()
          else if (selectedIndex == 4)
            const AnalysisPage()
          else if (selectedIndex == 5)
            const StaffManage()
          else if (selectedIndex == 6)
            const VerifyPage()
          else
            const DiscussPage(),
        ],
      ),
    );
  }
}
