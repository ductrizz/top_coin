import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:top_coin/models/chart_entity.dart';
import 'package:top_coin/models/coin_entity.dart';
import 'package:top_coin/models/data_entity/coin_dao.dart';
import 'package:top_coin/models/price_time_model.dart';

import '../models/data_entity/database.dart';

class CoinRepository {
  static List<CoinEntity> listCoinModel = List.empty();
  List<PriceTimeModel> listPriceTime = [];
  static String _urlAPI = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";
  static CoinDao? coinDao;
  Future<void> getListCoin() async{
    var dio = Dio();
    final response = await dio.get(_urlAPI);
    listCoinModel = List<CoinEntity>.from((response.data as List).map((e) => CoinEntity.fromJson(e)));
  }

  Future<List<charts.Series<PriceTimeModel, DateTime>>> getChartCoin({required String id, required int duration}) async{
    var _timeFrom = (DateTime.now().subtract(Duration(hours: duration)).toUtc().millisecondsSinceEpoch / 1000).round().toString();
    var _timeTo = (DateTime.now().toUtc().millisecondsSinceEpoch / 1000).round().toString();
    var _urlAPIChart = "https://api.coingecko.com/api/v3/coins/${id}/market_chart/range?vs_currency=usd&from=${_timeFrom}&to=${_timeTo}";
    var dio = Dio();
    //Get API
    final responseChart = await dio.get(_urlAPIChart);
    ChartEntity? listChartModel = ChartEntity.fromJson(responseChart.data);
    print(listChartModel.prices?.length.toString());
    listChartModel.prices?.forEach((element) => {
       listPriceTime.add(PriceTimeModel(dateTime: DateTime.fromMillisecondsSinceEpoch(element[0]), price: element[1].toString())),
      print('date Time ::: ${DateTime.fromMillisecondsSinceEpoch(element[0])} &&  Price ::: ${element[1].toString()}')
    });
    //Return to Series Chart
    return Future.value([
      charts.Series<PriceTimeModel, DateTime>(
        id: 'PriceTimeModel',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (PriceTimeModel chart, _) => chart.dateTime,
        measureFn: (PriceTimeModel chart, _) => num.parse(chart.price),
        data: listPriceTime,
      )
    ]);
  }

  //Save Data
  Future<void>  initData(CoinEntity coinModel) async{
    final database = await $FloorAppDatabase.databaseBuilder('coin_database.db').build();
    coinDao = database.coinDao;
  }
  Future<void>  insertFavorite(CoinEntity? coinEntity) async{
    coinDao?.insertCoin(coinEntity!);
  }
  Future<void>  removeFavorite(CoinEntity? coinEntity) async{
    coinDao?.deleteCoin(coinEntity!);
  }
  Future<bool> checkFavorite(CoinEntity? coinEntity) async{
    //find coinModel in List Data
    var findCoin = coinDao?.findCoinById(coinEntity?.id ?? '0');
    if(findCoin != null){
      return Future.value(true);
    }else{
      return Future.value(false);
    }
  }
}