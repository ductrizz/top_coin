import 'package:flutter/material.dart';
import 'package:top_coin/repository/coin_repository.dart';
import 'package:top_coin/res/dimens.dart';

import '../models/coin_entity.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/price_time_model.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.coinEntity}) : super(key: key);
  CoinEntity coinEntity;
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  CoinEntity? coinItem;
  List<charts.Series<PriceTimeModel, DateTime>> listPriceTimeChart = List.empty();
  CoinRepository coinRepository = CoinRepository();
  late bool isFavorite;
  int _time = 24;

  @override
  void initState() {
    coinItem = widget.coinEntity;
    coinRepository.checkFavorite(coinItem).then((value) => isFavorite = value);
    getChartFolowTime(_time);
    super.initState();
  }

  void getChartFolowTime(int time) async{
    _time = time;
    listPriceTimeChart = await coinRepository.getChartCoin(id: coinItem?.id ?? '', duration: time);
    setState(() {
    });
  }

  void pressIsFavirite(){
    setState(() {
      coinRepository.checkFavorite(coinItem).then((value){
        isFavorite = value;
        if(isFavorite){
          coinRepository.removeFavorite(coinItem);
          isFavorite = false;
          print('Remove');
        }else{
          coinRepository.insertFavorite(coinItem);
          isFavorite = true;
          print('Add');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(coinItem?.image ?? '', width: 50.w, height: 50.w,),
                SizedBox(width: 5.w,),
                Text(coinItem?.name ?? '', style: TextStyle(color: Colors.black, fontSize: 20.w,fontWeight: FontWeight.w800),),
              ],
            ),
            IconButton(onPressed: () => pressIsFavirite(),
                icon: isFavorite ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border_outlined, color: Colors.black)),
            Expanded(
              child: Center(
                child: charts.TimeSeriesChart(
                  listPriceTimeChart,
                  animate: true,
                  dateTimeFactory: const charts.LocalDateTimeFactory(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () => getChartFolowTime(24), child: Text('1 day', style: TextStyle(color: _time  == 24 ? Colors.red : Colors.black))),
                  TextButton(onPressed: () => getChartFolowTime(720), child: Text('1 moth', style: TextStyle(color: _time == 720 ? Colors.red : Colors.black))),
                  TextButton(onPressed: () => getChartFolowTime(8760), child: Text('1 year', style: TextStyle(color: _time == 8760 ? Colors.red : Colors.black))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

