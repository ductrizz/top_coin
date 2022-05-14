
class PriceTimeModel{
  DateTime dateTime;
  String price;

  @override
  String toString() {
    return 'PriceTimeModel{dateTime: $dateTime, price: $price}';
  }

  PriceTimeModel({ required this.dateTime , required this.price,});
}