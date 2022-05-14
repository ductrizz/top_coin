import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:top_coin/models/chart_entity.dart';
import 'package:top_coin/models/coin_entity.dart';
import 'package:top_coin/models/price_time_model.dart';

class CoinRepository {
  static List<CoinEntity> listCoinModel = List.empty();
  List<PriceTimeModel> listPriceTime = [];
  static String _urlAPI = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";

  Future<void> getListCoin() async{
    var dio = Dio();
    final response = await dio.get(_urlAPI);
    listCoinModel = List<CoinEntity>.from((response.data as List).map((e) => CoinEntity.fromJson(e)));
  }

  Future<List<charts.Series<PriceTimeModel, DateTime>>> getChartCoin({required String id, required int duration}) async{
    var _timeFrom = DateTime.now().subtract(Duration(hours: duration)).toUtc().millisecondsSinceEpoch;
    var _timeTo = DateTime.now().toUtc().millisecondsSinceEpoch;
    print('from time :: $_timeFrom && to time :: $_timeTo');
    var _urlAPIChart = "https://api.coingecko.com/api/v3/coins/${id}/market_chart/range?vs_currency=usd&from=${_timeFrom}&to=${_timeTo}";
    var dio = Dio();
    final responseChart = await dio.get(_urlAPIChart);
    ChartEntity? listChartModel = ChartEntity.fromJson(responseChart.data);
    listChartModel.prices?.forEach((Element) => {
       listPriceTime.add(PriceTimeModel(dateTime: DateTime.fromMillisecondsSinceEpoch(Element[0]), price: Element[1].toString())),
    });

    return Future.value([
      new charts.Series<PriceTimeModel, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (PriceTimeModel chart, _) => chart.dateTime,
        measureFn: (PriceTimeModel chart, _) => num.parse(chart.price),
        data: listPriceTime,
      )
    ]
    );
  }

}