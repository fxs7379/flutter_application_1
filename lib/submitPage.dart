import 'package:flutter/material.dart';

class SubmitPage extends StatefulWidget {
  const SubmitPage({super.key});

  @override
  State<SubmitPage> createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("提交页面"),
    );
  }
}
