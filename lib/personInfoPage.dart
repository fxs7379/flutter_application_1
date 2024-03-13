import 'package:flutter/material.dart';

class PersonInfoPage extends StatefulWidget {
  const PersonInfoPage({super.key});

  @override
  State<PersonInfoPage> createState() => _PersonInfoPageState();
}

class _PersonInfoPageState extends State<PersonInfoPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("个人信息页面"),
    );
  }
}
