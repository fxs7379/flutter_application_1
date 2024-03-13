import 'package:flutter/material.dart';

class StaffManage extends StatefulWidget {
  const StaffManage({super.key});

  @override
  State<StaffManage> createState() => _StaffManageState();
}

class _StaffManageState extends State<StaffManage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("员工管理页面"),
    );
  }
}
