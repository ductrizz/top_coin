import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:top_coin/models/coin_entity.dart';
import 'package:top_coin/pages/detail_screen.dart';
import 'package:top_coin/res/dimens.dart';

class CoinItem extends StatelessWidget {
  CoinItem({ this.coinItem , Key? key}) : super(key: key);
  CoinEntity? coinItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
      padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 5.w),
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen(coinEntity: coinItem!)),
          );
        },
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 30.w,
                    margin: EdgeInsets.all(5.w),
                    child: Text('${coinItem?.marketCapRank?.toInt()}', style: TextStyle(color: Colors.black, fontSize: 16.w,fontWeight: FontWeight.w500),)
                ),
                Image.network(coinItem?.image ?? '', width: 40.w, height: 40.w,),
                SizedBox(width: 15.w,),
                Text(coinItem?.name ?? '', style: TextStyle(color: Colors.black, fontSize: 14.w,fontWeight: FontWeight.w400),),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text((NumberFormat.currency(locale: 'en_US', customPattern: '#,###.# \u00a4').format(coinItem?.currentPrice ?? 0)), style: TextStyle(color: Colors.black, fontSize: 14.w,fontWeight: FontWeight.w400),),
                //Text(('${coinItem?.currentPrice ?? 0}') + ' USD', style: TextStyle(color: Colors.black, fontSize: 14.w,fontWeight: FontWeight.w400),),
                Text('${coinItem?.priceChangePercentage24h ?? 0}' + '%', style: TextStyle(color: ((coinItem?.priceChangePercentage24h ?? 0) > 0) ? Colors.green : Colors.red, fontSize: 12.w,fontWeight: FontWeight.w400),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
