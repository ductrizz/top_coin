import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('SearchScreen', style: TextStyle(fontSize: 24.w),),
    );
  }
}
