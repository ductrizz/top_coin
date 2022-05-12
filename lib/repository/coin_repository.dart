import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:top_coin/models/coin_entity.dart';

class CoinRepository {
  static List<CoinEntity> listCoinModel = List.empty();
  static String _urlAPI = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";

  Future<void> getListCoin() async{
    var dio = Dio();
    final response = await dio.get(_urlAPI);
    listCoinModel = List<CoinEntity>.from((response.data as List).map((e) => CoinEntity.fromJson(e)));
  }
}