import 'package:floor/floor.dart';
import 'package:top_coin/models/coin_entity.dart';

@dao
abstract class CoinDao {
  @Query('SELECT * FROM CoinEntity')
  Future<List<CoinEntity>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<CoinEntity?> findCoinById(int id);

  @Query('DELETE * FROM Person WHERE id = :id')
  Stream<CoinEntity?> deleteCoinById(int id);

  @insert
  Future<void> insertCoin(CoinEntity coinEntity);

  @delete
  Future<void> deleteCoin(CoinEntity coinEntity);
}