import 'package:flutter/material.dart';

class ClassifyPage extends StatefulWidget {
  const ClassifyPage({super.key});

  @override
  State<ClassifyPage> createState() => _ClassifyPageState();
}

class _ClassifyPageState extends State<ClassifyPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("图片分类页面"),
    );
  }
}
