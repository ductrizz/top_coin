import 'package:floor/floor.dart';
import 'package:top_coin/models/coin_entity.dart';

@dao
abstract class CoinDao {
  @Query('SELECT * FROM CoinEntity')
  Future<List<CoinEntity>> findAllCoin();

  @Query('SELECT * FROM CoinEntity WHERE id = :id')
  Future<CoinEntity?> findCoinById(String id);

  @Query('DELETE * FROM CoinEntity WHERE id = :id')
  Future<CoinEntity?> deleteCoinById(String id);

  @insert
  Future<void> insertCoin(CoinEntity coinEntity);

  @delete
  Future<void> deleteCoin(CoinEntity coinEntity);
}