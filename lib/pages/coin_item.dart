import 'package:flutter/cupertino.dart';
import 'package:top_coin/res/dimens.dart';

class CoinItem extends StatelessWidget {
  const CoinItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          //No.
          Text('01',),
          FadeInImage.assetNetwork(
              width: 200.w,
              height: 200.w,
              placeholder: 'assets/images/loading.gif',
              image: "https://hinhanhdep.org/wp-content/uploads/2016/07/anh-girl-xinh-ngay-ngat-long-nguoi-683x1024.jpg"),
        ],
      )
    );
  }
}
