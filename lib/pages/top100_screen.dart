import 'package:flutter/material.dart';
import 'package:top_coin/models/coin_entity.dart';
import 'package:top_coin/repository/coin_repository.dart';
import 'package:top_coin/res/dimens.dart';

import 'coin_item.dart';

class Top100Screen extends StatefulWidget {
  const Top100Screen({Key? key}) : super(key: key);

  @override
  _Top100ScreenState createState() => _Top100ScreenState();
}

class _Top100ScreenState extends State<Top100Screen>{
  var coinRespository = CoinRepository();
  List<CoinEntity> listCoin100 = List.empty();

  @override
  void initState() {
    super.initState();
    getAPI();
  }
  void getAPI() async{
    await coinRespository.getListCoin();
    listCoin100 = CoinRepository.listCoinModel;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCoin100.length,
      itemBuilder: (BuildContext context, index){
        return CoinItem(coinItem: listCoin100[index]);
    },
    );
  }
}
