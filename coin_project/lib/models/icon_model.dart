import 'package:flutter/cupertino.dart';

class IconModel{
  int no;
  String name;
  String image;
  double price;
  double percent;


  IconModel(this.no, @required this.name, this.image, this.price, this.percent);

  @override
  String toString() {
    return 'IconModel{no: $no, name: $name, price: $price, percent: $percent}';
  }


}