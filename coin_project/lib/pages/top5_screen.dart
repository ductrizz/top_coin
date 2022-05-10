import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

class Top5Screen extends StatefulWidget {
  const Top5Screen({Key? key}) : super(key: key);

  @override
  _Top5ScreenState createState() => _Top5ScreenState();
}

class _Top5ScreenState extends State<Top5Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Top5Screen', style: TextStyle(fontSize: 24.w),),
    );
  }
}
