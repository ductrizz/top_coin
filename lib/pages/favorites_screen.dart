
import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

import '../models/coin_entity.dart';
import '../repository/coin_repository.dart';
import 'coin_item.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  CoinRepository coinRespository = CoinRepository();
  List<CoinEntity> listCoinFavorite = List.empty();
  bool isFavorite = false;


  @override
  void initState() {
    super.initState();
    getAPI();
  }
  void getAPI() async{
    await coinRespository.getListCoin();
    listCoinFavorite = await coinRespository.getListFavorite();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCoinFavorite.length,
      itemBuilder: (BuildContext context, index) {
        return CoinItem(coinItem: listCoinFavorite[index]);
      },
    );
  }
}
