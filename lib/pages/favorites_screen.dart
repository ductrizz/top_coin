
import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('FavoritesScreen', style: TextStyle(fontSize: 24.w),),
    );
  }
}
