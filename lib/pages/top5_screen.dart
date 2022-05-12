import 'package:flutter/material.dart';
import '../models/coin_entity.dart';
import '../repository/coin_repository.dart';
import 'coin_item.dart';

class Top5Screen extends StatefulWidget {
  const Top5Screen({Key? key}) : super(key: key);

  @override
  _Top5ScreenState createState() => _Top5ScreenState();
}

class _Top5ScreenState extends State<Top5Screen> {
  var coinRespository = CoinRepository();
  List<CoinEntity> listCoin5 = List.empty();
  List<CoinEntity> listCoinAll = List.empty();

  @override
  void initState() {
    super.initState();
    getAPI();
  }
  void getAPI() async{
    await coinRespository.getListCoin();
    listCoinAll = [...CoinRepository.listCoinModel];
    listCoinAll.sort((a, b) => (b.priceChangePercentage24h ?? 0).compareTo(a.priceChangePercentage24h ?? 0));
    listCoin5 = [...listCoinAll.take(5)];
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCoin5.length,
      itemBuilder: (BuildContext context, index) {
        return CoinItem(coinItem: listCoin5[index]);
      },
    );
  }
}
