import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

class Top100Screen extends StatefulWidget {
  const Top100Screen({Key? key}) : super(key: key);

  @override
  _Top100ScreenState createState() => _Top100ScreenState();
}

class _Top100ScreenState extends State<Top100Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Top100Screen', style: TextStyle(fontSize: 24.w),),
    );
  }
}
