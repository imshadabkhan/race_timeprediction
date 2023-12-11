import 'package:flutter/material.dart';
class LongView extends StatefulWidget {
  const LongView({super.key});

  @override
  State<LongView> createState() => _LongViewState();
}

class _LongViewState extends State<LongView> {
  @override
  Widget build(BuildContext context) {
    return  Container(child: Center(child: Text("LongView")),);
  }
}