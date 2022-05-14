import 'package:floor/floor.dart';

/// id : "bitcoin"
/// symbol : "btc"
/// name : "Bitcoin"
/// image : "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"
/// current_price : 30342
/// market_cap : 578230240829
/// market_cap_rank : 1
/// fully_diluted_valuation : 637800638209
/// total_volume : 192727333268
/// high_24h : 30883
/// low_24h : 27773
/// price_change_24h : 2569.52
/// price_change_percentage_24h : 9.25194
/// market_cap_change_24h : 55195413082
/// market_cap_change_percentage_24h : 10.55291
/// circulating_supply : 19038606.0
/// total_supply : 21000000.0
/// max_supply : 21000000.0
/// ath : 69045
/// ath_change_percentage : -56.05414
/// ath_date : "2021-11-10T14:24:11.849Z"
/// atl : 67.81
/// atl_change_percentage : 44646.73726
/// atl_date : "2013-07-06T00:00:00.000Z"
/// roi : null
/// last_updated : "2022-05-13T08:58:36.619Z"

@entity
class CoinEntity {
  CoinEntity({
      this.id, 
      this.symbol, 
      this.name, 
      this.image, 
      this.currentPrice, 
      this.marketCap, 
      this.marketCapRank,
      this.priceChange24h, 
      this.priceChangePercentage24h, 
    });

  CoinEntity.fromJson(dynamic json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = double.tryParse(json['current_price'].toString());
    marketCap = double.tryParse(json['market_cap'].toString());
    marketCapRank = double.tryParse(json['market_cap_rank'].toString());
    priceChange24h = double.tryParse(json['price_change_24h'].toString());
    priceChangePercentage24h = double.tryParse(json['price_change_percentage_24h'].toString());
  }

  @primaryKey
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? currentPrice;
  double? marketCap;
  double? marketCapRank;
  double? priceChange24h;
  double? priceChangePercentage24h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['symbol'] = symbol;
    map['name'] = name;
    map['image'] = image;
    map['current_price'] = currentPrice;
    map['market_cap'] = marketCap;
    map['market_cap_rank'] = marketCapRank;
    map['price_change_24h'] = priceChange24h;
    map['price_change_percentage_24h'] = priceChangePercentage24h;
    return map;
  }
}