import 'package:floor/floor.dart';
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
  List<charts.Series<PriceTimeModel, DateTime>> listSeriesChart = List.empty();


  @override
  void initState() {
    coinItem = widget.coinEntity;
    getChart();
    setState(() {});
    super.initState();
  }

  void getChart()async{
    var coinRepository = CoinRepository();
    listSeriesChart = coinRepository.getChartCoin(id: coinItem?.id ?? '', duration: 10) as List<charts.Series<PriceTimeModel, DateTime>>;
    //seriesList =
  }


  @override
  Widget build(BuildContext context) {
    var type = 0;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.network(coinItem?.image ?? '', width: 50.w, height: 50.w,),
                SizedBox(width: 5.w,),
                Text(coinItem?.name ?? '', style: TextStyle(color: Colors.black, fontSize: 20.w,fontWeight: FontWeight.w800),),
              ],
            ),
            Expanded(
              child: Center(
                child: charts.TimeSeriesChart(
                  listSeriesChart,
                  animate: true,
                  dateTimeFactory: const charts.LocalDateTimeFactory(),
                ),
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: () => syncHistory(20), child: Text('20h', style: TextStyle(color: type  == 20 ? Colors.red : Colors.black))),
                TextButton(onPressed: () => syncHistory(500), child: Text('500h', style: TextStyle(color: type == 500 ? Colors.red : Colors.black))),
                TextButton(onPressed: () => syncHistory(1000), child: Text('1000h', style: TextStyle(color: type == 1000 ? Colors.red : Colors.black))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

syncHistory(int i) {
}
