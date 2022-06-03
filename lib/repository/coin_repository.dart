import 'dart:async';

import 'package:dio/dio.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:top_coin/models/chart_entity.dart';
import 'package:top_coin/models/coin_entity.dart';
import 'package:top_coin/repository/data_entity/coin_dao.dart';
import 'package:top_coin/models/price_time_model.dart';
import 'package:top_coin/repository/base_dio.dart';

import '../repository/data_entity/database.dart';

class CoinRepository {
  static List<CoinEntity> listCoinModel = List.empty();
  static CoinDao? coinDao;
  var dio = BaseDio.getDio();

  Future<void> getListCoin() async {
    const String _urlAPI =
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";
    final response = await dio.get(_urlAPI);
    listCoinModel = List<CoinEntity>.from(
        (response.data as List).map((e) => CoinEntity.fromJson(e)));
  }

  Future<List<charts.Series<PriceTimeModel, DateTime>>> getChartCoin({required String id, required int duration}) async {
    List<PriceTimeModel> listPriceTime = [];
    var _timeFrom = (DateTime.now()
                .subtract(Duration(hours: duration))
                .toUtc()
                .millisecondsSinceEpoch /
            1000)
        .round()
        .toString();
    var _timeTo = (DateTime.now().toUtc().millisecondsSinceEpoch / 1000)
        .round()
        .toString();
    var _urlAPIChart =
        "https://api.coingecko.com/api/v3/coins/$id/market_chart/range?vs_currency=usd&from=$_timeFrom&to=$_timeTo";
    //var dio = Dio();
    //Get API
    final responseChart = await dio.get(_urlAPIChart);
    ChartEntity? listChartModel = ChartEntity.fromJson(responseChart.data);
    listChartModel.prices?.forEach((element) {
        final item = PriceTimeModel(
            dateTime: DateTime.fromMillisecondsSinceEpoch(element[0]),
            price: element[1].toString());
        listPriceTime.add(item);
    });
    //Return to Series Chart
    return Future.value([
      charts.Series<PriceTimeModel, DateTime>(
        id: 'PriceTimeModel',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (PriceTimeModel chart, _) => chart.dateTime ?? DateTime.now(),
        measureFn: (PriceTimeModel chart, _) => num.parse(chart.price ?? "0"),
        data: listPriceTime,
      )
    ]);
  }

  //Save Data
  Future<void> initData() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    coinDao = database.coinDao;
  }

  Future<void> insertFavorite(CoinEntity? coinEntity) async {
    coinDao?.insertCoin(coinEntity!);
    // print('insertCoin complete :: ${coinEntity.toString()}');
  }

  Future<void> removeFavorite(CoinEntity? coinEntity) async {
    //coinDao?.deleteCoinById(coinEntity?.id ?? '0');
    coinDao?.deleteCoin(coinEntity!);
  }

  Future<bool> checkFavorite(CoinEntity? coinEntity) async {
    //find coinModel in List Data
    var findCoin = await coinDao?.findCoinById(coinEntity?.id ?? '0');
    if (findCoin != null) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  Future<List<CoinEntity>> getListFavorite() async{
    var listFavorite = await coinDao?.findAllCoin();
    return Future.value(listFavorite ??  List.empty());
  }
}